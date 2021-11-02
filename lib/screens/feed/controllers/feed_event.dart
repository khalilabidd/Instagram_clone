import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_event.freezed.dart';

@freezed
class FeedEvent with _$FeedEvent {
  const factory FeedEvent.feedFetchPosts() =
  FeedFetchPosts;

  const factory FeedEvent.feedPaginatePosts() =
  FeedPaginatePosts;

}
