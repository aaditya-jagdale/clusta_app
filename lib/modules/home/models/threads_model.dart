import 'package:freezed_annotation/freezed_annotation.dart';

part 'threads_model.freezed.dart';
part 'threads_model.g.dart';

@freezed
class ThreadModel with _$ThreadModel {
  const factory ThreadModel({
    @Default("") String thread_id,
    @Default("") String created_at,
    @Default("") String updated_at,
    @Default(ThreadMetadata()) ThreadMetadata metadata,
    @Default("") String status,
  }) = _ThreadModel;

  factory ThreadModel.fromJson(Map<String, dynamic> json) =>
      _$ThreadModelFromJson(json);
}

@freezed
class ThreadMetadata with _$ThreadMetadata {
  const factory ThreadMetadata({
    @Default("Untitled") String title,
    @Default(0) int sources,
    @Default([]) List<Map> source_details,
    @Default("") String graph_id,
    @Default("") String assistant_id,
  }) = _ThreadMetadata;

  factory ThreadMetadata.fromJson(Map<String, dynamic> json) =>
      _$ThreadMetadataFromJson(json);
}
