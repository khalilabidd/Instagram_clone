import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.freezed.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchUsers({required String query}) =
  SearchUsers;

  const factory SearchEvent.clearSearch() =
  ClearSearch;
}