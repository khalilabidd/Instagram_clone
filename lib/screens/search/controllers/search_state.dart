part of 'search_controller.dart';

enum SearchStatus { initial, loading, loaded, error }

class SearchState extends Equatable {
  final List<User> users;
  final SearchStatus status;
  final Failure failure;
  final String query;

  const SearchState({
    required this.users,
    required this.status,
    required this.failure,
    required this.query,
  });

  factory SearchState.initial() {
    return const SearchState(
      users: [],
      status: SearchStatus.initial,
      failure: Failure(),
      query: '',
    );
  }

  @override
  List<Object?> get props => [users, status, failure, query];

  SearchState copyWith({
    List<User>? users,
    SearchStatus? status,
    Failure? failure,
    String? query,
  }) {
    return SearchState(
      users: users ?? this.users,
      status: status ?? this.status,
      failure: failure ?? this.failure,
      query: query ?? this.query,
    );
  }
}
