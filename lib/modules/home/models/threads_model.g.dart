// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'threads_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThreadModelImpl _$$ThreadModelImplFromJson(Map<String, dynamic> json) =>
    _$ThreadModelImpl(
      thread_id: json['thread_id'] as String? ?? "",
      created_at: json['created_at'] as String? ?? "",
      updated_at: json['updated_at'] as String? ?? "",
      metadata: json['metadata'] == null
          ? const ThreadMetadata()
          : ThreadMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
      status: json['status'] as String? ?? "",
    );

Map<String, dynamic> _$$ThreadModelImplToJson(_$ThreadModelImpl instance) =>
    <String, dynamic>{
      'thread_id': instance.thread_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'metadata': instance.metadata,
      'status': instance.status,
    };

_$ThreadMetadataImpl _$$ThreadMetadataImplFromJson(Map<String, dynamic> json) =>
    _$ThreadMetadataImpl(
      title: json['title'] as String? ?? "Untitled",
      sources: (json['sources'] as num?)?.toInt() ?? 0,
      source_details:
          (json['source_details'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      graph_id: json['graph_id'] as String? ?? "",
      assistant_id: json['assistant_id'] as String? ?? "",
    );

Map<String, dynamic> _$$ThreadMetadataImplToJson(
  _$ThreadMetadataImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'sources': instance.sources,
  'source_details': instance.source_details,
  'graph_id': instance.graph_id,
  'assistant_id': instance.assistant_id,
};
