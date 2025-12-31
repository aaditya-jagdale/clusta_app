// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'threads_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ThreadModel _$ThreadModelFromJson(Map<String, dynamic> json) {
  return _ThreadModel.fromJson(json);
}

/// @nodoc
mixin _$ThreadModel {
  String get thread_id => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;
  ThreadMetadata get metadata => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this ThreadModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThreadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThreadModelCopyWith<ThreadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThreadModelCopyWith<$Res> {
  factory $ThreadModelCopyWith(
    ThreadModel value,
    $Res Function(ThreadModel) then,
  ) = _$ThreadModelCopyWithImpl<$Res, ThreadModel>;
  @useResult
  $Res call({
    String thread_id,
    String created_at,
    String updated_at,
    ThreadMetadata metadata,
    String status,
  });

  $ThreadMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$ThreadModelCopyWithImpl<$Res, $Val extends ThreadModel>
    implements $ThreadModelCopyWith<$Res> {
  _$ThreadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThreadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thread_id = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? metadata = null,
    Object? status = null,
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
          )
          as $Val,
    );
  }

  /// Create a copy of ThreadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThreadMetadataCopyWith<$Res> get metadata {
    return $ThreadMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ThreadModelImplCopyWith<$Res>
    implements $ThreadModelCopyWith<$Res> {
  factory _$$ThreadModelImplCopyWith(
    _$ThreadModelImpl value,
    $Res Function(_$ThreadModelImpl) then,
  ) = __$$ThreadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String thread_id,
    String created_at,
    String updated_at,
    ThreadMetadata metadata,
    String status,
  });

  @override
  $ThreadMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$ThreadModelImplCopyWithImpl<$Res>
    extends _$ThreadModelCopyWithImpl<$Res, _$ThreadModelImpl>
    implements _$$ThreadModelImplCopyWith<$Res> {
  __$$ThreadModelImplCopyWithImpl(
    _$ThreadModelImpl _value,
    $Res Function(_$ThreadModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ThreadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thread_id = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? metadata = null,
    Object? status = null,
  }) {
    return _then(
      _$ThreadModelImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ThreadModelImpl implements _ThreadModel {
  const _$ThreadModelImpl({
    this.thread_id = "",
    this.created_at = "",
    this.updated_at = "",
    this.metadata = const ThreadMetadata(),
    this.status = "",
  });

  factory _$ThreadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThreadModelImplFromJson(json);

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
  String toString() {
    return 'ThreadModel(thread_id: $thread_id, created_at: $created_at, updated_at: $updated_at, metadata: $metadata, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThreadModelImpl &&
            (identical(other.thread_id, thread_id) ||
                other.thread_id == thread_id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.status, status) || other.status == status));
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
  );

  /// Create a copy of ThreadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThreadModelImplCopyWith<_$ThreadModelImpl> get copyWith =>
      __$$ThreadModelImplCopyWithImpl<_$ThreadModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThreadModelImplToJson(this);
  }
}

abstract class _ThreadModel implements ThreadModel {
  const factory _ThreadModel({
    final String thread_id,
    final String created_at,
    final String updated_at,
    final ThreadMetadata metadata,
    final String status,
  }) = _$ThreadModelImpl;

  factory _ThreadModel.fromJson(Map<String, dynamic> json) =
      _$ThreadModelImpl.fromJson;

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

  /// Create a copy of ThreadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThreadModelImplCopyWith<_$ThreadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ThreadMetadata _$ThreadMetadataFromJson(Map<String, dynamic> json) {
  return _ThreadMetadata.fromJson(json);
}

/// @nodoc
mixin _$ThreadMetadata {
  String get title => throw _privateConstructorUsedError;
  int get sources => throw _privateConstructorUsedError;
  List<Map> get source_details => throw _privateConstructorUsedError;
  String get graph_id => throw _privateConstructorUsedError;
  String get assistant_id => throw _privateConstructorUsedError;

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
    List<Map> source_details,
    String graph_id,
    String assistant_id,
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
    Object? source_details = null,
    Object? graph_id = null,
    Object? assistant_id = null,
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
            source_details: null == source_details
                ? _value.source_details
                : source_details // ignore: cast_nullable_to_non_nullable
                      as List<Map>,
            graph_id: null == graph_id
                ? _value.graph_id
                : graph_id // ignore: cast_nullable_to_non_nullable
                      as String,
            assistant_id: null == assistant_id
                ? _value.assistant_id
                : assistant_id // ignore: cast_nullable_to_non_nullable
                      as String,
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
    List<Map> source_details,
    String graph_id,
    String assistant_id,
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
    Object? source_details = null,
    Object? graph_id = null,
    Object? assistant_id = null,
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
        source_details: null == source_details
            ? _value._source_details
            : source_details // ignore: cast_nullable_to_non_nullable
                  as List<Map>,
        graph_id: null == graph_id
            ? _value.graph_id
            : graph_id // ignore: cast_nullable_to_non_nullable
                  as String,
        assistant_id: null == assistant_id
            ? _value.assistant_id
            : assistant_id // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ThreadMetadataImpl implements _ThreadMetadata {
  const _$ThreadMetadataImpl({
    this.title = "Untitled",
    this.sources = 0,
    final List<Map> source_details = const [],
    this.graph_id = "",
    this.assistant_id = "",
  }) : _source_details = source_details;

  factory _$ThreadMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThreadMetadataImplFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final int sources;
  final List<Map> _source_details;
  @override
  @JsonKey()
  List<Map> get source_details {
    if (_source_details is EqualUnmodifiableListView) return _source_details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_source_details);
  }

  @override
  @JsonKey()
  final String graph_id;
  @override
  @JsonKey()
  final String assistant_id;

  @override
  String toString() {
    return 'ThreadMetadata(title: $title, sources: $sources, source_details: $source_details, graph_id: $graph_id, assistant_id: $assistant_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThreadMetadataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sources, sources) || other.sources == sources) &&
            const DeepCollectionEquality().equals(
              other._source_details,
              _source_details,
            ) &&
            (identical(other.graph_id, graph_id) ||
                other.graph_id == graph_id) &&
            (identical(other.assistant_id, assistant_id) ||
                other.assistant_id == assistant_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    sources,
    const DeepCollectionEquality().hash(_source_details),
    graph_id,
    assistant_id,
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
    final List<Map> source_details,
    final String graph_id,
    final String assistant_id,
  }) = _$ThreadMetadataImpl;

  factory _ThreadMetadata.fromJson(Map<String, dynamic> json) =
      _$ThreadMetadataImpl.fromJson;

  @override
  String get title;
  @override
  int get sources;
  @override
  List<Map> get source_details;
  @override
  String get graph_id;
  @override
  String get assistant_id;

  /// Create a copy of ThreadMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThreadMetadataImplCopyWith<_$ThreadMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
