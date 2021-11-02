import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:io';

part 'create_post_event.freezed.dart';

@freezed
class CreatePostEvent with _$CreatePostEvent {
  const factory CreatePostEvent.postImageChanged(File file) =
  PostImageChanged;

  const factory CreatePostEvent.captionChanged(String caption) =
  CaptionChanged;

  const factory CreatePostEvent.submit() =
  Submit;

  const factory CreatePostEvent.reset() =
  Reset;

}