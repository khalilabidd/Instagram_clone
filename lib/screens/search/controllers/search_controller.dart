import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:equatable/equatable.dart';
import 'package:instagram_clone/models/models.dart';
import 'package:instagram_clone/repositories/repositories.dart';
import 'search_event.dart';
part 'search_state.dart';

class SearchController extends StateNotifier<SearchState> {
  final UserRepository _userRepository;

  SearchController({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(SearchState.initial());

  Future mapEventsToStates(SearchEvent event) async {
    return event.map(searchUsers: (value) async {
      state = state.copyWith(status: SearchStatus.loading);
      try {
        List<User>? users;
        (value.query!='') ?
          users = await _userRepository.searchUsers(query: value.query)
            : users = null;
        state = state.copyWith(users: users, status: SearchStatus.loaded);
      } catch (err) {
        state.copyWith(
          status: SearchStatus.error,
          failure:
          const Failure(message: 'Something went wrong. Please try again.'),
        );
      }
    },
    clearSearch: (value) async {
      state = state.copyWith(users: [], status: SearchStatus.initial, query:'');
    });
  }
}
