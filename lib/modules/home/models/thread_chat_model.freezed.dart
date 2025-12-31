// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'thread_chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ThreadChatResponse _$ThreadChatResponseFromJson(Map<String, dynamic> json) {
  return _ThreadChatResponse.fromJson(json);
}

/// @nodoc
mixin _$ThreadChatResponse {
  String get thread_id => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;
  ThreadMetadata get metadata => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  ThreadConfig get config => throw _privateConstructorUsedError;
  ThreadValues get values => throw _privateConstructorUsedError;
  Map<String, dynamic> get interrupts => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this ThreadChatResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThreadChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThreadChatResponseCopyWith<ThreadChatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThreadChatResponseCopyWith<$Res> {
  factory $ThreadChatResponseCopyWith(
    ThreadChatResponse value,
    $Res Function(ThreadChatResponse) then,
  ) = _$ThreadChatResponseCopyWithImpl<$Res, ThreadChatResponse>;
  @useResult
  $Res call({
    String thread_id,
    String created_at,
    String updated_at,
    ThreadMetadata metadata,
    String status,
    ThreadConfig config,
    ThreadValues values,
    Map<String, dynamic> interrupts,
    String? error,
  });

  $ThreadMetadataCopyWith<$Res> get metadata;
  $ThreadConfigCopyWith<$Res> get config;
  $ThreadValuesCopyWith<$Res> get values;
}

/// @nodoc
class _$ThreadChatResponseCopyWithImpl<$Res, $Val extends ThreadChatResponse>
    implements $ThreadChatResponseCopyWith<$Res> {
  _$ThreadChatResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThreadChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thread_id = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? metadata = null,
    Object? status = null,
    Object? config = null,
    Object? values = null,
    Object? interrupts = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            thread_id: null == thread_id
                ? _value.thread_id
                : thread_id // ignore: cast_nullable_to_non_nullable
                      as String,
            created_at: null == created_at
                ? _value.created_at
                : created_at // ignore: cast_nullable_to_non_nullable
                      as String,
            updated_at: null == updated_at
                ? _value.updated_at
                : updated_at // ignore: cast_nullable_to_non_nullable
                      as String,
            metadata: null == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as ThreadMetadata,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            config: null == config
                ? _value.config
                : config // ignore: cast_nullable_to_non_nullable
                      as ThreadConfig,
            values: null == values
                ? _value.values
                : values // ignore: cast_nullable_to_non_nullable
                      as ThreadValues,
            interrupts: null == interrupts
                ? _value.interrupts
                : interrupts // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of ThreadChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThreadMetadataCopyWith<$Res> get metadata {
    return $ThreadMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }

  /// Create a copy of ThreadChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThreadConfigCopyWith<$Res> get config {
    return $ThreadConfigCopyWith<$Res>(_value.config, (value) {
      return _then(_value.copyWith(config: value) as $Val);
    });
  }

  /// Create a copy of ThreadChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThreadValuesCopyWith<$Res> get values {
    return $ThreadValuesCopyWith<$Res>(_value.values, (value) {
      return _then(_value.copyWith(values: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ThreadChatResponseImplCopyWith<$Res>
    implements $ThreadChatResponseCopyWith<$Res> {
  factory _$$ThreadChatResponseImplCopyWith(
    _$ThreadChatResponseImpl value,
    $Res Function(_$ThreadChatResponseImpl) then,
  ) = __$$ThreadChatResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String thread_id,
    String created_at,
    String updated_at,
    ThreadMetadata metadata,
    String status,
    ThreadConfig config,
    ThreadValues values,
    Map<String, dynamic> interrupts,
    String? error,
  });

  @override
  $ThreadMetadataCopyWith<$Res> get metadata;
  @override
  $ThreadConfigCopyWith<$Res> get config;
  @override
  $ThreadValuesCopyWith<$Res> get values;
}

/// @nodoc
class __$$ThreadChatResponseImplCopyWithImpl<$Res>
    extends _$ThreadChatResponseCopyWithImpl<$Res, _$ThreadChatResponseImpl>
    implements _$$ThreadChatResponseImplCopyWith<$Res> {
  __$$ThreadChatResponseImplCopyWithImpl(
    _$ThreadChatResponseImpl _value,
    $Res Function(_$ThreadChatResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ThreadChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thread_id = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? metadata = null,
    Object? status = null,
    Object? config = null,
    Object? values = null,
    Object? interrupts = null,
    Object? error = freezed,
  }) {
    return _then(
      _$ThreadChatResponseImpl(
        thread_id: null == thread_id
            ? _value.thread_id
            : thread_id // ignore: cast_nullable_to_non_nullable
                  as String,
        created_at: null == created_at
            ? _value.created_at
            : created_at // ignore: cast_nullable_to_non_nullable
                  as String,
        updated_at: null == updated_at
            ? _value.updated_at
            : updated_at // ignore: cast_nullable_to_non_nullable
                  as String,
        metadata: null == metadata
            ? _value.metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as ThreadMetadata,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        config: null == config
            ? _value.config
            : config // ignore: cast_nullable_to_non_nullable
                  as ThreadConfig,
        values: null == values
            ? _value.values
            : values // ignore: cast_nullable_to_non_nullable
                  as ThreadValues,
        interrupts: null == interrupts
            ? _value._interrupts
            : interrupts // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ThreadChatResponseImpl implements _ThreadChatResponse {
  const _$ThreadChatResponseImpl({
    this.thread_id = '',
    this.created_at = '',
    this.updated_at = '',
    this.metadata = const ThreadMetadata(),
    this.status = '',
    this.config = const ThreadConfig(),
    this.values = const ThreadValues(),
    final Map<String, dynamic> interrupts = const {},
    this.error,
  }) : _interrupts = interrupts;

  factory _$ThreadChatResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThreadChatResponseImplFromJson(json);

  @override
  @JsonKey()
  final String thread_id;
  @override
  @JsonKey()
  final String created_at;
  @override
  @JsonKey()
  final String updated_at;
  @override
  @JsonKey()
  final ThreadMetadata metadata;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final ThreadConfig config;
  @override
  @JsonKey()
  final ThreadValues values;
  final Map<String, dynamic> _interrupts;
  @override
  @JsonKey()
  Map<String, dynamic> get interrupts {
    if (_interrupts is EqualUnmodifiableMapView) return _interrupts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_interrupts);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'ThreadChatResponse(thread_id: $thread_id, created_at: $created_at, updated_at: $updated_at, metadata: $metadata, status: $status, config: $config, values: $values, interrupts: $interrupts, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThreadChatResponseImpl &&
            (identical(other.thread_id, thread_id) ||
                other.thread_id == thread_id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.config, config) || other.config == config) &&
            (identical(other.values, values) || other.values == values) &&
            const DeepCollectionEquality().equals(
              other._interrupts,
              _interrupts,
            ) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    thread_id,
    created_at,
    updated_at,
    metadata,
    status,
    config,
    values,
    const DeepCollectionEquality().hash(_interrupts),
    error,
  );

  /// Create a copy of ThreadChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThreadChatResponseImplCopyWith<_$ThreadChatResponseImpl> get copyWith =>
      __$$ThreadChatResponseImplCopyWithImpl<_$ThreadChatResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ThreadChatResponseImplToJson(this);
  }
}

abstract class _ThreadChatResponse implements ThreadChatResponse {
  const factory _ThreadChatResponse({
    final String thread_id,
    final String created_at,
    final String updated_at,
    final ThreadMetadata metadata,
    final String status,
    final ThreadConfig config,
    final ThreadValues values,
    final Map<String, dynamic> interrupts,
    final String? error,
  }) = _$ThreadChatResponseImpl;

  factory _ThreadChatResponse.fromJson(Map<String, dynamic> json) =
      _$ThreadChatResponseImpl.fromJson;

  @override
  String get thread_id;
  @override
  String get created_at;
  @override
  String get updated_at;
  @override
  ThreadMetadata get metadata;
  @override
  String get status;
  @override
  ThreadConfig get config;
  @override
  ThreadValues get values;
  @override
  Map<String, dynamic> get interrupts;
  @override
  String? get error;

  /// Create a copy of ThreadChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThreadChatResponseImplCopyWith<_$ThreadChatResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ThreadMetadata _$ThreadMetadataFromJson(Map<String, dynamic> json) {
  return _ThreadMetadata.fromJson(json);
}

/// @nodoc
mixin _$ThreadMetadata {
  String get title => throw _privateConstructorUsedError;
  int get sources => throw _privateConstructorUsedError;
  String get graph_id => throw _privateConstructorUsedError;
  String get assistant_id => throw _privateConstructorUsedError;
  List<SourceDetail> get source_details => throw _privateConstructorUsedError;

  /// Serializes this ThreadMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThreadMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThreadMetadataCopyWith<ThreadMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThreadMetadataCopyWith<$Res> {
  factory $ThreadMetadataCopyWith(
    ThreadMetadata value,
    $Res Function(ThreadMetadata) then,
  ) = _$ThreadMetadataCopyWithImpl<$Res, ThreadMetadata>;
  @useResult
  $Res call({
    String title,
    int sources,
    String graph_id,
    String assistant_id,
    List<SourceDetail> source_details,
  });
}

/// @nodoc
class _$ThreadMetadataCopyWithImpl<$Res, $Val extends ThreadMetadata>
    implements $ThreadMetadataCopyWith<$Res> {
  _$ThreadMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThreadMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? sources = null,
    Object? graph_id = null,
    Object? assistant_id = null,
    Object? source_details = null,
  }) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            sources: null == sources
                ? _value.sources
                : sources // ignore: cast_nullable_to_non_nullable
                      as int,
            graph_id: null == graph_id
                ? _value.graph_id
                : graph_id // ignore: cast_nullable_to_non_nullable
                      as String,
            assistant_id: null == assistant_id
                ? _value.assistant_id
                : assistant_id // ignore: cast_nullable_to_non_nullable
                      as String,
            source_details: null == source_details
                ? _value.source_details
                : source_details // ignore: cast_nullable_to_non_nullable
                      as List<SourceDetail>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ThreadMetadataImplCopyWith<$Res>
    implements $ThreadMetadataCopyWith<$Res> {
  factory _$$ThreadMetadataImplCopyWith(
    _$ThreadMetadataImpl value,
    $Res Function(_$ThreadMetadataImpl) then,
  ) = __$$ThreadMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    int sources,
    String graph_id,
    String assistant_id,
    List<SourceDetail> source_details,
  });
}

/// @nodoc
class __$$ThreadMetadataImplCopyWithImpl<$Res>
    extends _$ThreadMetadataCopyWithImpl<$Res, _$ThreadMetadataImpl>
    implements _$$ThreadMetadataImplCopyWith<$Res> {
  __$$ThreadMetadataImplCopyWithImpl(
    _$ThreadMetadataImpl _value,
    $Res Function(_$ThreadMetadataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ThreadMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? sources = null,
    Object? graph_id = null,
    Object? assistant_id = null,
    Object? source_details = null,
  }) {
    return _then(
      _$ThreadMetadataImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        sources: null == sources
            ? _value.sources
            : sources // ignore: cast_nullable_to_non_nullable
                  as int,
        graph_id: null == graph_id
            ? _value.graph_id
            : graph_id // ignore: cast_nullable_to_non_nullable
                  as String,
        assistant_id: null == assistant_id
            ? _value.assistant_id
            : assistant_id // ignore: cast_nullable_to_non_nullable
                  as String,
        source_details: null == source_details
            ? _value._source_details
            : source_details // ignore: cast_nullable_to_non_nullable
                  as List<SourceDetail>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ThreadMetadataImpl implements _ThreadMetadata {
  const _$ThreadMetadataImpl({
    this.title = '',
    this.sources = 0,
    this.graph_id = '',
    this.assistant_id = '',
    final List<SourceDetail> source_details = const [],
  }) : _source_details = source_details;

  factory _$ThreadMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThreadMetadataImplFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final int sources;
  @override
  @JsonKey()
  final String graph_id;
  @override
  @JsonKey()
  final String assistant_id;
  final List<SourceDetail> _source_details;
  @override
  @JsonKey()
  List<SourceDetail> get source_details {
    if (_source_details is EqualUnmodifiableListView) return _source_details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_source_details);
  }

  @override
  String toString() {
    return 'ThreadMetadata(title: $title, sources: $sources, graph_id: $graph_id, assistant_id: $assistant_id, source_details: $source_details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThreadMetadataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sources, sources) || other.sources == sources) &&
            (identical(other.graph_id, graph_id) ||
                other.graph_id == graph_id) &&
            (identical(other.assistant_id, assistant_id) ||
                other.assistant_id == assistant_id) &&
            const DeepCollectionEquality().equals(
              other._source_details,
              _source_details,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    sources,
    graph_id,
    assistant_id,
    const DeepCollectionEquality().hash(_source_details),
  );

  /// Create a copy of ThreadMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThreadMetadataImplCopyWith<_$ThreadMetadataImpl> get copyWith =>
      __$$ThreadMetadataImplCopyWithImpl<_$ThreadMetadataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ThreadMetadataImplToJson(this);
  }
}

abstract class _ThreadMetadata implements ThreadMetadata {
  const factory _ThreadMetadata({
    final String title,
    final int sources,
    final String graph_id,
    final String assistant_id,
    final List<SourceDetail> source_details,
  }) = _$ThreadMetadataImpl;

  factory _ThreadMetadata.fromJson(Map<String, dynamic> json) =
      _$ThreadMetadataImpl.fromJson;

  @override
  String get title;
  @override
  int get sources;
  @override
  String get graph_id;
  @override
  String get assistant_id;
  @override
  List<SourceDetail> get source_details;

  /// Create a copy of ThreadMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThreadMetadataImplCopyWith<_$ThreadMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SourceDetail _$SourceDetailFromJson(Map<String, dynamic> json) {
  return _SourceDetail.fromJson(json);
}

/// @nodoc
mixin _$SourceDetail {
  int get documents => throw _privateConstructorUsedError;
  int get links => throw _privateConstructorUsedError;

  /// Serializes this SourceDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SourceDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SourceDetailCopyWith<SourceDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceDetailCopyWith<$Res> {
  factory $SourceDetailCopyWith(
    SourceDetail value,
    $Res Function(SourceDetail) then,
  ) = _$SourceDetailCopyWithImpl<$Res, SourceDetail>;
  @useResult
  $Res call({int documents, int links});
}

/// @nodoc
class _$SourceDetailCopyWithImpl<$Res, $Val extends SourceDetail>
    implements $SourceDetailCopyWith<$Res> {
  _$SourceDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SourceDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? documents = null, Object? links = null}) {
    return _then(
      _value.copyWith(
            documents: null == documents
                ? _value.documents
                : documents // ignore: cast_nullable_to_non_nullable
                      as int,
            links: null == links
                ? _value.links
                : links // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SourceDetailImplCopyWith<$Res>
    implements $SourceDetailCopyWith<$Res> {
  factory _$$SourceDetailImplCopyWith(
    _$SourceDetailImpl value,
    $Res Function(_$SourceDetailImpl) then,
  ) = __$$SourceDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int documents, int links});
}

/// @nodoc
class __$$SourceDetailImplCopyWithImpl<$Res>
    extends _$SourceDetailCopyWithImpl<$Res, _$SourceDetailImpl>
    implements _$$SourceDetailImplCopyWith<$Res> {
  __$$SourceDetailImplCopyWithImpl(
    _$SourceDetailImpl _value,
    $Res Function(_$SourceDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SourceDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? documents = null, Object? links = null}) {
    return _then(
      _$SourceDetailImpl(
        documents: null == documents
            ? _value.documents
            : documents // ignore: cast_nullable_to_non_nullable
                  as int,
        links: null == links
            ? _value.links
            : links // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceDetailImpl implements _SourceDetail {
  const _$SourceDetailImpl({this.documents = 0, this.links = 0});

  factory _$SourceDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceDetailImplFromJson(json);

  @override
  @JsonKey()
  final int documents;
  @override
  @JsonKey()
  final int links;

  @override
  String toString() {
    return 'SourceDetail(documents: $documents, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceDetailImpl &&
            (identical(other.documents, documents) ||
                other.documents == documents) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, documents, links);

  /// Create a copy of SourceDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceDetailImplCopyWith<_$SourceDetailImpl> get copyWith =>
      __$$SourceDetailImplCopyWithImpl<_$SourceDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceDetailImplToJson(this);
  }
}

abstract class _SourceDetail implements SourceDetail {
  const factory _SourceDetail({final int documents, final int links}) =
      _$SourceDetailImpl;

  factory _SourceDetail.fromJson(Map<String, dynamic> json) =
      _$SourceDetailImpl.fromJson;

  @override
  int get documents;
  @override
  int get links;

  /// Create a copy of SourceDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SourceDetailImplCopyWith<_$SourceDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ThreadConfig _$ThreadConfigFromJson(Map<String, dynamic> json) {
  return _ThreadConfig.fromJson(json);
}

/// @nodoc
mixin _$ThreadConfig {
  Map<String, dynamic> get configurable => throw _privateConstructorUsedError;

  /// Serializes this ThreadConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThreadConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThreadConfigCopyWith<ThreadConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThreadConfigCopyWith<$Res> {
  factory $ThreadConfigCopyWith(
    ThreadConfig value,
    $Res Function(ThreadConfig) then,
  ) = _$ThreadConfigCopyWithImpl<$Res, ThreadConfig>;
  @useResult
  $Res call({Map<String, dynamic> configurable});
}

/// @nodoc
class _$ThreadConfigCopyWithImpl<$Res, $Val extends ThreadConfig>
    implements $ThreadConfigCopyWith<$Res> {
  _$ThreadConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThreadConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? configurable = null}) {
    return _then(
      _value.copyWith(
            configurable: null == configurable
                ? _value.configurable
                : configurable // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ThreadConfigImplCopyWith<$Res>
    implements $ThreadConfigCopyWith<$Res> {
  factory _$$ThreadConfigImplCopyWith(
    _$ThreadConfigImpl value,
    $Res Function(_$ThreadConfigImpl) then,
  ) = __$$ThreadConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> configurable});
}

/// @nodoc
class __$$ThreadConfigImplCopyWithImpl<$Res>
    extends _$ThreadConfigCopyWithImpl<$Res, _$ThreadConfigImpl>
    implements _$$ThreadConfigImplCopyWith<$Res> {
  __$$ThreadConfigImplCopyWithImpl(
    _$ThreadConfigImpl _value,
    $Res Function(_$ThreadConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ThreadConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? configurable = null}) {
    return _then(
      _$ThreadConfigImpl(
        configurable: null == configurable
            ? _value._configurable
            : configurable // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ThreadConfigImpl implements _ThreadConfig {
  const _$ThreadConfigImpl({final Map<String, dynamic> configurable = const {}})
    : _configurable = configurable;

  factory _$ThreadConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThreadConfigImplFromJson(json);

  final Map<String, dynamic> _configurable;
  @override
  @JsonKey()
  Map<String, dynamic> get configurable {
    if (_configurable is EqualUnmodifiableMapView) return _configurable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_configurable);
  }

  @override
  String toString() {
    return 'ThreadConfig(configurable: $configurable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThreadConfigImpl &&
            const DeepCollectionEquality().equals(
              other._configurable,
              _configurable,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_configurable),
  );

  /// Create a copy of ThreadConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThreadConfigImplCopyWith<_$ThreadConfigImpl> get copyWith =>
      __$$ThreadConfigImplCopyWithImpl<_$ThreadConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThreadConfigImplToJson(this);
  }
}

abstract class _ThreadConfig implements ThreadConfig {
  const factory _ThreadConfig({final Map<String, dynamic> configurable}) =
      _$ThreadConfigImpl;

  factory _ThreadConfig.fromJson(Map<String, dynamic> json) =
      _$ThreadConfigImpl.fromJson;

  @override
  Map<String, dynamic> get configurable;

  /// Create a copy of ThreadConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThreadConfigImplCopyWith<_$ThreadConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ThreadValues _$ThreadValuesFromJson(Map<String, dynamic> json) {
  return _ThreadValues.fromJson(json);
}

/// @nodoc
mixin _$ThreadValues {
  List<ThreadMessage> get messages => throw _privateConstructorUsedError;

  /// Serializes this ThreadValues to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThreadValues
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThreadValuesCopyWith<ThreadValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThreadValuesCopyWith<$Res> {
  factory $ThreadValuesCopyWith(
    ThreadValues value,
    $Res Function(ThreadValues) then,
  ) = _$ThreadValuesCopyWithImpl<$Res, ThreadValues>;
  @useResult
  $Res call({List<ThreadMessage> messages});
}

/// @nodoc
class _$ThreadValuesCopyWithImpl<$Res, $Val extends ThreadValues>
    implements $ThreadValuesCopyWith<$Res> {
  _$ThreadValuesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThreadValues
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _value.copyWith(
            messages: null == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<ThreadMessage>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ThreadValuesImplCopyWith<$Res>
    implements $ThreadValuesCopyWith<$Res> {
  factory _$$ThreadValuesImplCopyWith(
    _$ThreadValuesImpl value,
    $Res Function(_$ThreadValuesImpl) then,
  ) = __$$ThreadValuesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ThreadMessage> messages});
}

/// @nodoc
class __$$ThreadValuesImplCopyWithImpl<$Res>
    extends _$ThreadValuesCopyWithImpl<$Res, _$ThreadValuesImpl>
    implements _$$ThreadValuesImplCopyWith<$Res> {
  __$$ThreadValuesImplCopyWithImpl(
    _$ThreadValuesImpl _value,
    $Res Function(_$ThreadValuesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ThreadValues
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _$ThreadValuesImpl(
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<ThreadMessage>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ThreadValuesImpl implements _ThreadValues {
  const _$ThreadValuesImpl({final List<ThreadMessage> messages = const []})
    : _messages = messages;

  factory _$ThreadValuesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThreadValuesImplFromJson(json);

  final List<ThreadMessage> _messages;
  @override
  @JsonKey()
  List<ThreadMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ThreadValues(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThreadValuesImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ThreadValues
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThreadValuesImplCopyWith<_$ThreadValuesImpl> get copyWith =>
      __$$ThreadValuesImplCopyWithImpl<_$ThreadValuesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThreadValuesImplToJson(this);
  }
}

abstract class _ThreadValues implements ThreadValues {
  const factory _ThreadValues({final List<ThreadMessage> messages}) =
      _$ThreadValuesImpl;

  factory _ThreadValues.fromJson(Map<String, dynamic> json) =
      _$ThreadValuesImpl.fromJson;

  @override
  List<ThreadMessage> get messages;

  /// Create a copy of ThreadValues
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThreadValuesImplCopyWith<_$ThreadValuesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ThreadMessage _$ThreadMessageFromJson(Map<String, dynamic> json) {
  return _ThreadMessage.fromJson(json);
}

/// @nodoc
mixin _$ThreadMessage {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  dynamic get content => throw _privateConstructorUsedError;
  Map<String, dynamic> get additional_kwargs =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> get response_metadata =>
      throw _privateConstructorUsedError;
  List<dynamic> get tool_calls => throw _privateConstructorUsedError;
  UsageMetadata get usage_metadata => throw _privateConstructorUsedError;
  List<dynamic> get invalid_tool_calls => throw _privateConstructorUsedError;

  /// Serializes this ThreadMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThreadMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThreadMessageCopyWith<ThreadMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThreadMessageCopyWith<$Res> {
  factory $ThreadMessageCopyWith(
    ThreadMessage value,
    $Res Function(ThreadMessage) then,
  ) = _$ThreadMessageCopyWithImpl<$Res, ThreadMessage>;
  @useResult
  $Res call({
    String id,
    String? name,
    String type,
    dynamic content,
    Map<String, dynamic> additional_kwargs,
    Map<String, dynamic> response_metadata,
    List<dynamic> tool_calls,
    UsageMetadata usage_metadata,
    List<dynamic> invalid_tool_calls,
  });

  $UsageMetadataCopyWith<$Res> get usage_metadata;
}

/// @nodoc
class _$ThreadMessageCopyWithImpl<$Res, $Val extends ThreadMessage>
    implements $ThreadMessageCopyWith<$Res> {
  _$ThreadMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThreadMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? type = null,
    Object? content = freezed,
    Object? additional_kwargs = null,
    Object? response_metadata = null,
    Object? tool_calls = null,
    Object? usage_metadata = null,
    Object? invalid_tool_calls = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            content: freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            additional_kwargs: null == additional_kwargs
                ? _value.additional_kwargs
                : additional_kwargs // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            response_metadata: null == response_metadata
                ? _value.response_metadata
                : response_metadata // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            tool_calls: null == tool_calls
                ? _value.tool_calls
                : tool_calls // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>,
            usage_metadata: null == usage_metadata
                ? _value.usage_metadata
                : usage_metadata // ignore: cast_nullable_to_non_nullable
                      as UsageMetadata,
            invalid_tool_calls: null == invalid_tool_calls
                ? _value.invalid_tool_calls
                : invalid_tool_calls // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>,
          )
          as $Val,
    );
  }

  /// Create a copy of ThreadMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsageMetadataCopyWith<$Res> get usage_metadata {
    return $UsageMetadataCopyWith<$Res>(_value.usage_metadata, (value) {
      return _then(_value.copyWith(usage_metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ThreadMessageImplCopyWith<$Res>
    implements $ThreadMessageCopyWith<$Res> {
  factory _$$ThreadMessageImplCopyWith(
    _$ThreadMessageImpl value,
    $Res Function(_$ThreadMessageImpl) then,
  ) = __$$ThreadMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String? name,
    String type,
    dynamic content,
    Map<String, dynamic> additional_kwargs,
    Map<String, dynamic> response_metadata,
    List<dynamic> tool_calls,
    UsageMetadata usage_metadata,
    List<dynamic> invalid_tool_calls,
  });

  @override
  $UsageMetadataCopyWith<$Res> get usage_metadata;
}

/// @nodoc
class __$$ThreadMessageImplCopyWithImpl<$Res>
    extends _$ThreadMessageCopyWithImpl<$Res, _$ThreadMessageImpl>
    implements _$$ThreadMessageImplCopyWith<$Res> {
  __$$ThreadMessageImplCopyWithImpl(
    _$ThreadMessageImpl _value,
    $Res Function(_$ThreadMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ThreadMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? type = null,
    Object? content = freezed,
    Object? additional_kwargs = null,
    Object? response_metadata = null,
    Object? tool_calls = null,
    Object? usage_metadata = null,
    Object? invalid_tool_calls = null,
  }) {
    return _then(
      _$ThreadMessageImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        content: freezed == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        additional_kwargs: null == additional_kwargs
            ? _value._additional_kwargs
            : additional_kwargs // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        response_metadata: null == response_metadata
            ? _value._response_metadata
            : response_metadata // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        tool_calls: null == tool_calls
            ? _value._tool_calls
            : tool_calls // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>,
        usage_metadata: null == usage_metadata
            ? _value.usage_metadata
            : usage_metadata // ignore: cast_nullable_to_non_nullable
                  as UsageMetadata,
        invalid_tool_calls: null == invalid_tool_calls
            ? _value._invalid_tool_calls
            : invalid_tool_calls // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ThreadMessageImpl implements _ThreadMessage {
  const _$ThreadMessageImpl({
    this.id = '',
    this.name,
    this.type = '',
    this.content = '',
    final Map<String, dynamic> additional_kwargs = const {},
    final Map<String, dynamic> response_metadata = const {},
    final List<dynamic> tool_calls = const [],
    this.usage_metadata = const UsageMetadata(),
    final List<dynamic> invalid_tool_calls = const [],
  }) : _additional_kwargs = additional_kwargs,
       _response_metadata = response_metadata,
       _tool_calls = tool_calls,
       _invalid_tool_calls = invalid_tool_calls;

  factory _$ThreadMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThreadMessageImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  final String? name;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final dynamic content;
  final Map<String, dynamic> _additional_kwargs;
  @override
  @JsonKey()
  Map<String, dynamic> get additional_kwargs {
    if (_additional_kwargs is EqualUnmodifiableMapView)
      return _additional_kwargs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_additional_kwargs);
  }

  final Map<String, dynamic> _response_metadata;
  @override
  @JsonKey()
  Map<String, dynamic> get response_metadata {
    if (_response_metadata is EqualUnmodifiableMapView)
      return _response_metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_response_metadata);
  }

  final List<dynamic> _tool_calls;
  @override
  @JsonKey()
  List<dynamic> get tool_calls {
    if (_tool_calls is EqualUnmodifiableListView) return _tool_calls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tool_calls);
  }

  @override
  @JsonKey()
  final UsageMetadata usage_metadata;
  final List<dynamic> _invalid_tool_calls;
  @override
  @JsonKey()
  List<dynamic> get invalid_tool_calls {
    if (_invalid_tool_calls is EqualUnmodifiableListView)
      return _invalid_tool_calls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invalid_tool_calls);
  }

  @override
  String toString() {
    return 'ThreadMessage(id: $id, name: $name, type: $type, content: $content, additional_kwargs: $additional_kwargs, response_metadata: $response_metadata, tool_calls: $tool_calls, usage_metadata: $usage_metadata, invalid_tool_calls: $invalid_tool_calls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThreadMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(
              other._additional_kwargs,
              _additional_kwargs,
            ) &&
            const DeepCollectionEquality().equals(
              other._response_metadata,
              _response_metadata,
            ) &&
            const DeepCollectionEquality().equals(
              other._tool_calls,
              _tool_calls,
            ) &&
            (identical(other.usage_metadata, usage_metadata) ||
                other.usage_metadata == usage_metadata) &&
            const DeepCollectionEquality().equals(
              other._invalid_tool_calls,
              _invalid_tool_calls,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    type,
    const DeepCollectionEquality().hash(content),
    const DeepCollectionEquality().hash(_additional_kwargs),
    const DeepCollectionEquality().hash(_response_metadata),
    const DeepCollectionEquality().hash(_tool_calls),
    usage_metadata,
    const DeepCollectionEquality().hash(_invalid_tool_calls),
  );

  /// Create a copy of ThreadMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThreadMessageImplCopyWith<_$ThreadMessageImpl> get copyWith =>
      __$$ThreadMessageImplCopyWithImpl<_$ThreadMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThreadMessageImplToJson(this);
  }
}

abstract class _ThreadMessage implements ThreadMessage {
  const factory _ThreadMessage({
    final String id,
    final String? name,
    final String type,
    final dynamic content,
    final Map<String, dynamic> additional_kwargs,
    final Map<String, dynamic> response_metadata,
    final List<dynamic> tool_calls,
    final UsageMetadata usage_metadata,
    final List<dynamic> invalid_tool_calls,
  }) = _$ThreadMessageImpl;

  factory _ThreadMessage.fromJson(Map<String, dynamic> json) =
      _$ThreadMessageImpl.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  String get type;
  @override
  dynamic get content;
  @override
  Map<String, dynamic> get additional_kwargs;
  @override
  Map<String, dynamic> get response_metadata;
  @override
  List<dynamic> get tool_calls;
  @override
  UsageMetadata get usage_metadata;
  @override
  List<dynamic> get invalid_tool_calls;

  /// Create a copy of ThreadMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThreadMessageImplCopyWith<_$ThreadMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UsageMetadata _$UsageMetadataFromJson(Map<String, dynamic> json) {
  return _UsageMetadata.fromJson(json);
}

/// @nodoc
mixin _$UsageMetadata {
  int get input_tokens => throw _privateConstructorUsedError;
  int get total_tokens => throw _privateConstructorUsedError;
  int get output_tokens => throw _privateConstructorUsedError;
  TokenDetails get input_token_details => throw _privateConstructorUsedError;
  TokenDetails get output_token_details => throw _privateConstructorUsedError;

  /// Serializes this UsageMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsageMetadataCopyWith<UsageMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsageMetadataCopyWith<$Res> {
  factory $UsageMetadataCopyWith(
    UsageMetadata value,
    $Res Function(UsageMetadata) then,
  ) = _$UsageMetadataCopyWithImpl<$Res, UsageMetadata>;
  @useResult
  $Res call({
    int input_tokens,
    int total_tokens,
    int output_tokens,
    TokenDetails input_token_details,
    TokenDetails output_token_details,
  });

  $TokenDetailsCopyWith<$Res> get input_token_details;
  $TokenDetailsCopyWith<$Res> get output_token_details;
}

/// @nodoc
class _$UsageMetadataCopyWithImpl<$Res, $Val extends UsageMetadata>
    implements $UsageMetadataCopyWith<$Res> {
  _$UsageMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input_tokens = null,
    Object? total_tokens = null,
    Object? output_tokens = null,
    Object? input_token_details = null,
    Object? output_token_details = null,
  }) {
    return _then(
      _value.copyWith(
            input_tokens: null == input_tokens
                ? _value.input_tokens
                : input_tokens // ignore: cast_nullable_to_non_nullable
                      as int,
            total_tokens: null == total_tokens
                ? _value.total_tokens
                : total_tokens // ignore: cast_nullable_to_non_nullable
                      as int,
            output_tokens: null == output_tokens
                ? _value.output_tokens
                : output_tokens // ignore: cast_nullable_to_non_nullable
                      as int,
            input_token_details: null == input_token_details
                ? _value.input_token_details
                : input_token_details // ignore: cast_nullable_to_non_nullable
                      as TokenDetails,
            output_token_details: null == output_token_details
                ? _value.output_token_details
                : output_token_details // ignore: cast_nullable_to_non_nullable
                      as TokenDetails,
          )
          as $Val,
    );
  }

  /// Create a copy of UsageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenDetailsCopyWith<$Res> get input_token_details {
    return $TokenDetailsCopyWith<$Res>(_value.input_token_details, (value) {
      return _then(_value.copyWith(input_token_details: value) as $Val);
    });
  }

  /// Create a copy of UsageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenDetailsCopyWith<$Res> get output_token_details {
    return $TokenDetailsCopyWith<$Res>(_value.output_token_details, (value) {
      return _then(_value.copyWith(output_token_details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UsageMetadataImplCopyWith<$Res>
    implements $UsageMetadataCopyWith<$Res> {
  factory _$$UsageMetadataImplCopyWith(
    _$UsageMetadataImpl value,
    $Res Function(_$UsageMetadataImpl) then,
  ) = __$$UsageMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int input_tokens,
    int total_tokens,
    int output_tokens,
    TokenDetails input_token_details,
    TokenDetails output_token_details,
  });

  @override
  $TokenDetailsCopyWith<$Res> get input_token_details;
  @override
  $TokenDetailsCopyWith<$Res> get output_token_details;
}

/// @nodoc
class __$$UsageMetadataImplCopyWithImpl<$Res>
    extends _$UsageMetadataCopyWithImpl<$Res, _$UsageMetadataImpl>
    implements _$$UsageMetadataImplCopyWith<$Res> {
  __$$UsageMetadataImplCopyWithImpl(
    _$UsageMetadataImpl _value,
    $Res Function(_$UsageMetadataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UsageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input_tokens = null,
    Object? total_tokens = null,
    Object? output_tokens = null,
    Object? input_token_details = null,
    Object? output_token_details = null,
  }) {
    return _then(
      _$UsageMetadataImpl(
        input_tokens: null == input_tokens
            ? _value.input_tokens
            : input_tokens // ignore: cast_nullable_to_non_nullable
                  as int,
        total_tokens: null == total_tokens
            ? _value.total_tokens
            : total_tokens // ignore: cast_nullable_to_non_nullable
                  as int,
        output_tokens: null == output_tokens
            ? _value.output_tokens
            : output_tokens // ignore: cast_nullable_to_non_nullable
                  as int,
        input_token_details: null == input_token_details
            ? _value.input_token_details
            : input_token_details // ignore: cast_nullable_to_non_nullable
                  as TokenDetails,
        output_token_details: null == output_token_details
            ? _value.output_token_details
            : output_token_details // ignore: cast_nullable_to_non_nullable
                  as TokenDetails,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UsageMetadataImpl implements _UsageMetadata {
  const _$UsageMetadataImpl({
    this.input_tokens = 0,
    this.total_tokens = 0,
    this.output_tokens = 0,
    this.input_token_details = const TokenDetails(),
    this.output_token_details = const TokenDetails(),
  });

  factory _$UsageMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsageMetadataImplFromJson(json);

  @override
  @JsonKey()
  final int input_tokens;
  @override
  @JsonKey()
  final int total_tokens;
  @override
  @JsonKey()
  final int output_tokens;
  @override
  @JsonKey()
  final TokenDetails input_token_details;
  @override
  @JsonKey()
  final TokenDetails output_token_details;

  @override
  String toString() {
    return 'UsageMetadata(input_tokens: $input_tokens, total_tokens: $total_tokens, output_tokens: $output_tokens, input_token_details: $input_token_details, output_token_details: $output_token_details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsageMetadataImpl &&
            (identical(other.input_tokens, input_tokens) ||
                other.input_tokens == input_tokens) &&
            (identical(other.total_tokens, total_tokens) ||
                other.total_tokens == total_tokens) &&
            (identical(other.output_tokens, output_tokens) ||
                other.output_tokens == output_tokens) &&
            (identical(other.input_token_details, input_token_details) ||
                other.input_token_details == input_token_details) &&
            (identical(other.output_token_details, output_token_details) ||
                other.output_token_details == output_token_details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    input_tokens,
    total_tokens,
    output_tokens,
    input_token_details,
    output_token_details,
  );

  /// Create a copy of UsageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsageMetadataImplCopyWith<_$UsageMetadataImpl> get copyWith =>
      __$$UsageMetadataImplCopyWithImpl<_$UsageMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsageMetadataImplToJson(this);
  }
}

abstract class _UsageMetadata implements UsageMetadata {
  const factory _UsageMetadata({
    final int input_tokens,
    final int total_tokens,
    final int output_tokens,
    final TokenDetails input_token_details,
    final TokenDetails output_token_details,
  }) = _$UsageMetadataImpl;

  factory _UsageMetadata.fromJson(Map<String, dynamic> json) =
      _$UsageMetadataImpl.fromJson;

  @override
  int get input_tokens;
  @override
  int get total_tokens;
  @override
  int get output_tokens;
  @override
  TokenDetails get input_token_details;
  @override
  TokenDetails get output_token_details;

  /// Create a copy of UsageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsageMetadataImplCopyWith<_$UsageMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TokenDetails _$TokenDetailsFromJson(Map<String, dynamic> json) {
  return _TokenDetails.fromJson(json);
}

/// @nodoc
mixin _$TokenDetails {
  int get cache_read => throw _privateConstructorUsedError;
  int get reasoning => throw _privateConstructorUsedError;

  /// Serializes this TokenDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenDetailsCopyWith<TokenDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDetailsCopyWith<$Res> {
  factory $TokenDetailsCopyWith(
    TokenDetails value,
    $Res Function(TokenDetails) then,
  ) = _$TokenDetailsCopyWithImpl<$Res, TokenDetails>;
  @useResult
  $Res call({int cache_read, int reasoning});
}

/// @nodoc
class _$TokenDetailsCopyWithImpl<$Res, $Val extends TokenDetails>
    implements $TokenDetailsCopyWith<$Res> {
  _$TokenDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cache_read = null, Object? reasoning = null}) {
    return _then(
      _value.copyWith(
            cache_read: null == cache_read
                ? _value.cache_read
                : cache_read // ignore: cast_nullable_to_non_nullable
                      as int,
            reasoning: null == reasoning
                ? _value.reasoning
                : reasoning // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TokenDetailsImplCopyWith<$Res>
    implements $TokenDetailsCopyWith<$Res> {
  factory _$$TokenDetailsImplCopyWith(
    _$TokenDetailsImpl value,
    $Res Function(_$TokenDetailsImpl) then,
  ) = __$$TokenDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int cache_read, int reasoning});
}

/// @nodoc
class __$$TokenDetailsImplCopyWithImpl<$Res>
    extends _$TokenDetailsCopyWithImpl<$Res, _$TokenDetailsImpl>
    implements _$$TokenDetailsImplCopyWith<$Res> {
  __$$TokenDetailsImplCopyWithImpl(
    _$TokenDetailsImpl _value,
    $Res Function(_$TokenDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cache_read = null, Object? reasoning = null}) {
    return _then(
      _$TokenDetailsImpl(
        cache_read: null == cache_read
            ? _value.cache_read
            : cache_read // ignore: cast_nullable_to_non_nullable
                  as int,
        reasoning: null == reasoning
            ? _value.reasoning
            : reasoning // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenDetailsImpl implements _TokenDetails {
  const _$TokenDetailsImpl({this.cache_read = 0, this.reasoning = 0});

  factory _$TokenDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenDetailsImplFromJson(json);

  @override
  @JsonKey()
  final int cache_read;
  @override
  @JsonKey()
  final int reasoning;

  @override
  String toString() {
    return 'TokenDetails(cache_read: $cache_read, reasoning: $reasoning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenDetailsImpl &&
            (identical(other.cache_read, cache_read) ||
                other.cache_read == cache_read) &&
            (identical(other.reasoning, reasoning) ||
                other.reasoning == reasoning));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cache_read, reasoning);

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenDetailsImplCopyWith<_$TokenDetailsImpl> get copyWith =>
      __$$TokenDetailsImplCopyWithImpl<_$TokenDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenDetailsImplToJson(this);
  }
}

abstract class _TokenDetails implements TokenDetails {
  const factory _TokenDetails({final int cache_read, final int reasoning}) =
      _$TokenDetailsImpl;

  factory _TokenDetails.fromJson(Map<String, dynamic> json) =
      _$TokenDetailsImpl.fromJson;

  @override
  int get cache_read;
  @override
  int get reasoning;

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenDetailsImplCopyWith<_$TokenDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
