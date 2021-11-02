import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/screens.dart';
import 'package:instagram_clone/widgets/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/general_providers.dart';
import 'controllers/search_controller.dart';
import 'controllers/search_event.dart';

final searchProvider =
    StateNotifierProvider.autoDispose<SearchController, SearchState>((ref) {
  final userRepository = ref.watch(userRepositoryProvider);
  return SearchController(userRepository: userRepository);
});

class SearchScreen extends ConsumerStatefulWidget {
  static const String routeName = '/search';

  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}


class _SearchScreenState extends ConsumerState {
  String query='';
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    const styleActive = TextStyle(color: Colors.black);
    const styleHint = TextStyle(color: Colors.black54);
    final style = query.isEmpty ? styleHint : styleActive;
    final searchStates = ref.watch(searchProvider);
    final searchEvents = ref.watch(searchProvider.notifier);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 30,
          title: Container(
            height: 35,
            margin: const EdgeInsets.fromLTRB(0, 16, 0, 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[200],
              border: Border.all(color: Colors.white),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                icon: Icon(Icons.search, color: style.color),
                suffixIcon: query.isNotEmpty
                    ? GestureDetector(
                  child: Icon(Icons.close, color: style.color),
                  onTap: () {
                    controller.clear();
                    searchEvents.mapEventsToStates(SearchEvent.searchUsers(query: query));
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                ) : null,
                hintText: 'Search users',
                hintStyle: style,
                border: InputBorder.none,
              ),
              style: style,
              onChanged:(value) {
              setState(() {
                query = value;
              });
              searchEvents.mapEventsToStates(SearchEvent.searchUsers(query: query));
              },
            ),
          ),
        ),
        body: Builder(
          builder: (context) {
            switch (searchStates.status) {
              case SearchStatus.error:
                return CenteredText(text: searchStates.failure.message);
              case SearchStatus.loading:
                return const Center(child: CircularProgressIndicator());
              case SearchStatus.loaded:
                return searchStates.users.isNotEmpty
                    ? ListView.builder(
                        itemCount: searchStates.users.length,
                        itemBuilder: (BuildContext context, int index) {
                          final user = searchStates.users[index];
                          return ListTile(
                            leading: UserProfileImage(
                              radius: 22.0,
                              profileImageUrl: user.profileImageUrl,
                            ),
                            title: Text(
                              user.username,
                              style: const TextStyle(fontSize: 16.0),
                            ),
                            onTap: () => {
                              Navigator.of(context).pushNamed(
                                ProfileScreen.routeName,
                                arguments: ProfileScreenArgs(userId: user.id),
                              )
                            },
                          );
                        },
                      )
                    : const CenteredText(text: 'No users found');
              default:
                return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
