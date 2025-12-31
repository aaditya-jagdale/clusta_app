import 'package:freezed_annotation/freezed_annotation.dart';

part 'thread_chat_model.freezed.dart';
part 'thread_chat_model.g.dart';

@freezed
class ThreadChatResponse with _$ThreadChatResponse {
  const factory ThreadChatResponse({
    @Default('') String thread_id,
    @Default('') String created_at,
    @Default('') String updated_at,
    @Default(ThreadMetadata()) ThreadMetadata metadata,
    @Default('') String status,
    @Default(ThreadConfig()) ThreadConfig config,
    @Default(ThreadValues()) ThreadValues values,
    @Default({}) Map<String, dynamic> interrupts,
    String? error,
  }) = _ThreadChatResponse;

  factory ThreadChatResponse.fromJson(Map<String, dynamic> json) =>
      _$ThreadChatResponseFromJson(json);
}

@freezed
class ThreadMetadata with _$ThreadMetadata {
  const factory ThreadMetadata({
    @Default('') String title,
    @Default(0) int sources,
    @Default('') String graph_id,
    @Default('') String assistant_id,
    @Default([]) List<SourceDetail> source_details,
  }) = _ThreadMetadata;

  factory ThreadMetadata.fromJson(Map<String, dynamic> json) =>
      _$ThreadMetadataFromJson(json);
}

@freezed
class SourceDetail with _$SourceDetail {
  const factory SourceDetail({
    @Default(0) int documents,
    @Default(0) int links,
  }) = _SourceDetail;

  factory SourceDetail.fromJson(Map<String, dynamic> json) =>
      _$SourceDetailFromJson(json);
}

@freezed
class ThreadConfig with _$ThreadConfig {
  const factory ThreadConfig({@Default({}) Map<String, dynamic> configurable}) =
      _ThreadConfig;

  factory ThreadConfig.fromJson(Map<String, dynamic> json) =>
      _$ThreadConfigFromJson(json);
}

@freezed
class ThreadValues with _$ThreadValues {
  const factory ThreadValues({@Default([]) List<ThreadMessage> messages}) =
      _ThreadValues;

  factory ThreadValues.fromJson(Map<String, dynamic> json) =>
      _$ThreadValuesFromJson(json);
}

@freezed
class ThreadMessage with _$ThreadMessage {
  const factory ThreadMessage({
    @Default('') String id,
    String? name,
    @Default('') String type,
    @Default('') dynamic content,
    @Default({}) Map<String, dynamic> additional_kwargs,
    @Default({}) Map<String, dynamic> response_metadata,
    @Default([]) List<dynamic> tool_calls,
    @Default(UsageMetadata()) UsageMetadata usage_metadata,
    @Default([]) List<dynamic> invalid_tool_calls,
  }) = _ThreadMessage;

  factory ThreadMessage.fromJson(Map<String, dynamic> json) =>
      _$ThreadMessageFromJson(json);
}

@freezed
class UsageMetadata with _$UsageMetadata {
  const factory UsageMetadata({
    @Default(0) int input_tokens,
    @Default(0) int total_tokens,
    @Default(0) int output_tokens,
    @Default(TokenDetails()) TokenDetails input_token_details,
    @Default(TokenDetails()) TokenDetails output_token_details,
  }) = _UsageMetadata;

  factory UsageMetadata.fromJson(Map<String, dynamic> json) =>
      _$UsageMetadataFromJson(json);
}

@freezed
class TokenDetails with _$TokenDetails {
  const factory TokenDetails({
    @Default(0) int cache_read,
    @Default(0) int reasoning,
  }) = _TokenDetails;

  factory TokenDetails.fromJson(Map<String, dynamic> json) =>
      _$TokenDetailsFromJson(json);
}
