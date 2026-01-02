// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThreadModelImpl _$$ThreadModelImplFromJson(Map<String, dynamic> json) =>
    _$ThreadModelImpl(
      thread_id: json['thread_id'] as String? ?? '',
      created_at: json['created_at'] as String? ?? '',
      updated_at: json['updated_at'] as String? ?? '',
      metadata: json['metadata'] == null
          ? const ThreadMetadata()
          : ThreadMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
      status: json['status'] as String? ?? '',
      config: json['config'] == null
          ? const ThreadConfig()
          : ThreadConfig.fromJson(json['config'] as Map<String, dynamic>),
      values: json['values'] == null
          ? const ThreadValues()
          : ThreadValues.fromJson(json['values'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$ThreadModelImplToJson(_$ThreadModelImpl instance) =>
    <String, dynamic>{
      'thread_id': instance.thread_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'metadata': instance.metadata,
      'status': instance.status,
      'config': instance.config,
      'values': instance.values,
      'error': instance.error,
    };

_$ThreadMetadataImpl _$$ThreadMetadataImplFromJson(Map<String, dynamic> json) =>
    _$ThreadMetadataImpl(
      title: json['title'] as String? ?? 'Untitled',
      sources: (json['sources'] as num?)?.toInt() ?? 0,
      graph_id: json['graph_id'] as String? ?? '',
      assistant_id: json['assistant_id'] as String? ?? '',
      source_details: json['source_details'] == null
          ? const SourceDetail()
          : SourceDetail.fromJson(
              json['source_details'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$ThreadMetadataImplToJson(
  _$ThreadMetadataImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'sources': instance.sources,
  'graph_id': instance.graph_id,
  'assistant_id': instance.assistant_id,
  'source_details': instance.source_details,
};

_$SourceDetailImpl _$$SourceDetailImplFromJson(Map<String, dynamic> json) =>
    _$SourceDetailImpl(
      documents: (json['documents'] as num?)?.toInt() ?? 0,
      links: (json['links'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$SourceDetailImplToJson(_$SourceDetailImpl instance) =>
    <String, dynamic>{'documents': instance.documents, 'links': instance.links};

_$ThreadConfigImpl _$$ThreadConfigImplFromJson(Map<String, dynamic> json) =>
    _$ThreadConfigImpl(
      configurable: json['configurable'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$ThreadConfigImplToJson(_$ThreadConfigImpl instance) =>
    <String, dynamic>{'configurable': instance.configurable};

_$ThreadValuesImpl _$$ThreadValuesImplFromJson(Map<String, dynamic> json) =>
    _$ThreadValuesImpl(
      messages:
          (json['messages'] as List<dynamic>?)
              ?.map((e) => ThreadMessage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ThreadValuesImplToJson(_$ThreadValuesImpl instance) =>
    <String, dynamic>{'messages': instance.messages};

_$ThreadMessageImpl _$$ThreadMessageImplFromJson(
  Map<String, dynamic> json,
) => _$ThreadMessageImpl(
  id: json['id'] as String? ?? '',
  name: json['name'] as String?,
  type: json['type'] as String? ?? '',
  content: json['content'] ?? '',
  additional_kwargs:
      json['additional_kwargs'] as Map<String, dynamic>? ?? const {},
  response_metadata:
      json['response_metadata'] as Map<String, dynamic>? ?? const {},
  tool_calls: json['tool_calls'] as List<dynamic>? ?? const [],
  usage_metadata: json['usage_metadata'] == null
      ? const UsageMetadata()
      : UsageMetadata.fromJson(json['usage_metadata'] as Map<String, dynamic>),
  invalid_tool_calls: json['invalid_tool_calls'] as List<dynamic>? ?? const [],
);

Map<String, dynamic> _$$ThreadMessageImplToJson(_$ThreadMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'content': instance.content,
      'additional_kwargs': instance.additional_kwargs,
      'response_metadata': instance.response_metadata,
      'tool_calls': instance.tool_calls,
      'usage_metadata': instance.usage_metadata,
      'invalid_tool_calls': instance.invalid_tool_calls,
    };

_$UsageMetadataImpl _$$UsageMetadataImplFromJson(Map<String, dynamic> json) =>
    _$UsageMetadataImpl(
      input_tokens: (json['input_tokens'] as num?)?.toInt() ?? 0,
      total_tokens: (json['total_tokens'] as num?)?.toInt() ?? 0,
      output_tokens: (json['output_tokens'] as num?)?.toInt() ?? 0,
      input_token_details: json['input_token_details'] == null
          ? const TokenDetails()
          : TokenDetails.fromJson(
              json['input_token_details'] as Map<String, dynamic>,
            ),
      output_token_details: json['output_token_details'] == null
          ? const TokenDetails()
          : TokenDetails.fromJson(
              json['output_token_details'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$UsageMetadataImplToJson(_$UsageMetadataImpl instance) =>
    <String, dynamic>{
      'input_tokens': instance.input_tokens,
      'total_tokens': instance.total_tokens,
      'output_tokens': instance.output_tokens,
      'input_token_details': instance.input_token_details,
      'output_token_details': instance.output_token_details,
    };

_$TokenDetailsImpl _$$TokenDetailsImplFromJson(Map<String, dynamic> json) =>
    _$TokenDetailsImpl(
      cache_read: (json['cache_read'] as num?)?.toInt() ?? 0,
      reasoning: (json['reasoning'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$TokenDetailsImplToJson(_$TokenDetailsImpl instance) =>
    <String, dynamic>{
      'cache_read': instance.cache_read,
      'reasoning': instance.reasoning,
    };
