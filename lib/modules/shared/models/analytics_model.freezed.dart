// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AnalyticsResponseModel _$AnalyticsResponseModelFromJson(
  Map<String, dynamic> json,
) {
  return _AnalyticsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsResponseModel {
  Periods get periods => throw _privateConstructorUsedError;
  TopApps get topApps => throw _privateConstructorUsedError;

  /// Serializes this AnalyticsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnalyticsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalyticsResponseModelCopyWith<AnalyticsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsResponseModelCopyWith<$Res> {
  factory $AnalyticsResponseModelCopyWith(
    AnalyticsResponseModel value,
    $Res Function(AnalyticsResponseModel) then,
  ) = _$AnalyticsResponseModelCopyWithImpl<$Res, AnalyticsResponseModel>;
  @useResult
  $Res call({Periods periods, TopApps topApps});

  $PeriodsCopyWith<$Res> get periods;
  $TopAppsCopyWith<$Res> get topApps;
}

/// @nodoc
class _$AnalyticsResponseModelCopyWithImpl<
  $Res,
  $Val extends AnalyticsResponseModel
>
    implements $AnalyticsResponseModelCopyWith<$Res> {
  _$AnalyticsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalyticsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? periods = null, Object? topApps = null}) {
    return _then(
      _value.copyWith(
            periods: null == periods
                ? _value.periods
                : periods // ignore: cast_nullable_to_non_nullable
                      as Periods,
            topApps: null == topApps
                ? _value.topApps
                : topApps // ignore: cast_nullable_to_non_nullable
                      as TopApps,
          )
          as $Val,
    );
  }

  /// Create a copy of AnalyticsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodsCopyWith<$Res> get periods {
    return $PeriodsCopyWith<$Res>(_value.periods, (value) {
      return _then(_value.copyWith(periods: value) as $Val);
    });
  }

  /// Create a copy of AnalyticsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TopAppsCopyWith<$Res> get topApps {
    return $TopAppsCopyWith<$Res>(_value.topApps, (value) {
      return _then(_value.copyWith(topApps: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnalyticsResponseModelImplCopyWith<$Res>
    implements $AnalyticsResponseModelCopyWith<$Res> {
  factory _$$AnalyticsResponseModelImplCopyWith(
    _$AnalyticsResponseModelImpl value,
    $Res Function(_$AnalyticsResponseModelImpl) then,
  ) = __$$AnalyticsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Periods periods, TopApps topApps});

  @override
  $PeriodsCopyWith<$Res> get periods;
  @override
  $TopAppsCopyWith<$Res> get topApps;
}

/// @nodoc
class __$$AnalyticsResponseModelImplCopyWithImpl<$Res>
    extends
        _$AnalyticsResponseModelCopyWithImpl<$Res, _$AnalyticsResponseModelImpl>
    implements _$$AnalyticsResponseModelImplCopyWith<$Res> {
  __$$AnalyticsResponseModelImplCopyWithImpl(
    _$AnalyticsResponseModelImpl _value,
    $Res Function(_$AnalyticsResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AnalyticsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? periods = null, Object? topApps = null}) {
    return _then(
      _$AnalyticsResponseModelImpl(
        periods: null == periods
            ? _value.periods
            : periods // ignore: cast_nullable_to_non_nullable
                  as Periods,
        topApps: null == topApps
            ? _value.topApps
            : topApps // ignore: cast_nullable_to_non_nullable
                  as TopApps,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticsResponseModelImpl implements _AnalyticsResponseModel {
  const _$AnalyticsResponseModelImpl({
    required this.periods,
    required this.topApps,
  });

  factory _$AnalyticsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsResponseModelImplFromJson(json);

  @override
  final Periods periods;
  @override
  final TopApps topApps;

  @override
  String toString() {
    return 'AnalyticsResponseModel(periods: $periods, topApps: $topApps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsResponseModelImpl &&
            (identical(other.periods, periods) || other.periods == periods) &&
            (identical(other.topApps, topApps) || other.topApps == topApps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, periods, topApps);

  /// Create a copy of AnalyticsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsResponseModelImplCopyWith<_$AnalyticsResponseModelImpl>
  get copyWith =>
      __$$AnalyticsResponseModelImplCopyWithImpl<_$AnalyticsResponseModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsResponseModelImplToJson(this);
  }
}

abstract class _AnalyticsResponseModel implements AnalyticsResponseModel {
  const factory _AnalyticsResponseModel({
    required final Periods periods,
    required final TopApps topApps,
  }) = _$AnalyticsResponseModelImpl;

  factory _AnalyticsResponseModel.fromJson(Map<String, dynamic> json) =
      _$AnalyticsResponseModelImpl.fromJson;

  @override
  Periods get periods;
  @override
  TopApps get topApps;

  /// Create a copy of AnalyticsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalyticsResponseModelImplCopyWith<_$AnalyticsResponseModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

Periods _$PeriodsFromJson(Map<String, dynamic> json) {
  return _Periods.fromJson(json);
}

/// @nodoc
mixin _$Periods {
  PeriodAnalytics get today => throw _privateConstructorUsedError;
  PeriodAnalytics get week => throw _privateConstructorUsedError;
  PeriodAnalytics get month => throw _privateConstructorUsedError;
  PeriodAnalytics get year => throw _privateConstructorUsedError;
  PeriodAnalytics get allTime => throw _privateConstructorUsedError;

  /// Serializes this Periods to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Periods
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PeriodsCopyWith<Periods> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodsCopyWith<$Res> {
  factory $PeriodsCopyWith(Periods value, $Res Function(Periods) then) =
      _$PeriodsCopyWithImpl<$Res, Periods>;
  @useResult
  $Res call({
    PeriodAnalytics today,
    PeriodAnalytics week,
    PeriodAnalytics month,
    PeriodAnalytics year,
    PeriodAnalytics allTime,
  });

  $PeriodAnalyticsCopyWith<$Res> get today;
  $PeriodAnalyticsCopyWith<$Res> get week;
  $PeriodAnalyticsCopyWith<$Res> get month;
  $PeriodAnalyticsCopyWith<$Res> get year;
  $PeriodAnalyticsCopyWith<$Res> get allTime;
}

/// @nodoc
class _$PeriodsCopyWithImpl<$Res, $Val extends Periods>
    implements $PeriodsCopyWith<$Res> {
  _$PeriodsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Periods
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today = null,
    Object? week = null,
    Object? month = null,
    Object? year = null,
    Object? allTime = null,
  }) {
    return _then(
      _value.copyWith(
            today: null == today
                ? _value.today
                : today // ignore: cast_nullable_to_non_nullable
                      as PeriodAnalytics,
            week: null == week
                ? _value.week
                : week // ignore: cast_nullable_to_non_nullable
                      as PeriodAnalytics,
            month: null == month
                ? _value.month
                : month // ignore: cast_nullable_to_non_nullable
                      as PeriodAnalytics,
            year: null == year
                ? _value.year
                : year // ignore: cast_nullable_to_non_nullable
                      as PeriodAnalytics,
            allTime: null == allTime
                ? _value.allTime
                : allTime // ignore: cast_nullable_to_non_nullable
                      as PeriodAnalytics,
          )
          as $Val,
    );
  }

  /// Create a copy of Periods
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodAnalyticsCopyWith<$Res> get today {
    return $PeriodAnalyticsCopyWith<$Res>(_value.today, (value) {
      return _then(_value.copyWith(today: value) as $Val);
    });
  }

  /// Create a copy of Periods
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodAnalyticsCopyWith<$Res> get week {
    return $PeriodAnalyticsCopyWith<$Res>(_value.week, (value) {
      return _then(_value.copyWith(week: value) as $Val);
    });
  }

  /// Create a copy of Periods
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodAnalyticsCopyWith<$Res> get month {
    return $PeriodAnalyticsCopyWith<$Res>(_value.month, (value) {
      return _then(_value.copyWith(month: value) as $Val);
    });
  }

  /// Create a copy of Periods
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodAnalyticsCopyWith<$Res> get year {
    return $PeriodAnalyticsCopyWith<$Res>(_value.year, (value) {
      return _then(_value.copyWith(year: value) as $Val);
    });
  }

  /// Create a copy of Periods
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodAnalyticsCopyWith<$Res> get allTime {
    return $PeriodAnalyticsCopyWith<$Res>(_value.allTime, (value) {
      return _then(_value.copyWith(allTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PeriodsImplCopyWith<$Res> implements $PeriodsCopyWith<$Res> {
  factory _$$PeriodsImplCopyWith(
    _$PeriodsImpl value,
    $Res Function(_$PeriodsImpl) then,
  ) = __$$PeriodsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    PeriodAnalytics today,
    PeriodAnalytics week,
    PeriodAnalytics month,
    PeriodAnalytics year,
    PeriodAnalytics allTime,
  });

  @override
  $PeriodAnalyticsCopyWith<$Res> get today;
  @override
  $PeriodAnalyticsCopyWith<$Res> get week;
  @override
  $PeriodAnalyticsCopyWith<$Res> get month;
  @override
  $PeriodAnalyticsCopyWith<$Res> get year;
  @override
  $PeriodAnalyticsCopyWith<$Res> get allTime;
}

/// @nodoc
class __$$PeriodsImplCopyWithImpl<$Res>
    extends _$PeriodsCopyWithImpl<$Res, _$PeriodsImpl>
    implements _$$PeriodsImplCopyWith<$Res> {
  __$$PeriodsImplCopyWithImpl(
    _$PeriodsImpl _value,
    $Res Function(_$PeriodsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Periods
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today = null,
    Object? week = null,
    Object? month = null,
    Object? year = null,
    Object? allTime = null,
  }) {
    return _then(
      _$PeriodsImpl(
        today: null == today
            ? _value.today
            : today // ignore: cast_nullable_to_non_nullable
                  as PeriodAnalytics,
        week: null == week
            ? _value.week
            : week // ignore: cast_nullable_to_non_nullable
                  as PeriodAnalytics,
        month: null == month
            ? _value.month
            : month // ignore: cast_nullable_to_non_nullable
                  as PeriodAnalytics,
        year: null == year
            ? _value.year
            : year // ignore: cast_nullable_to_non_nullable
                  as PeriodAnalytics,
        allTime: null == allTime
            ? _value.allTime
            : allTime // ignore: cast_nullable_to_non_nullable
                  as PeriodAnalytics,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PeriodsImpl implements _Periods {
  const _$PeriodsImpl({
    required this.today,
    required this.week,
    required this.month,
    required this.year,
    required this.allTime,
  });

  factory _$PeriodsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeriodsImplFromJson(json);

  @override
  final PeriodAnalytics today;
  @override
  final PeriodAnalytics week;
  @override
  final PeriodAnalytics month;
  @override
  final PeriodAnalytics year;
  @override
  final PeriodAnalytics allTime;

  @override
  String toString() {
    return 'Periods(today: $today, week: $week, month: $month, year: $year, allTime: $allTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodsImpl &&
            (identical(other.today, today) || other.today == today) &&
            (identical(other.week, week) || other.week == week) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.allTime, allTime) || other.allTime == allTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, today, week, month, year, allTime);

  /// Create a copy of Periods
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodsImplCopyWith<_$PeriodsImpl> get copyWith =>
      __$$PeriodsImplCopyWithImpl<_$PeriodsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeriodsImplToJson(this);
  }
}

abstract class _Periods implements Periods {
  const factory _Periods({
    required final PeriodAnalytics today,
    required final PeriodAnalytics week,
    required final PeriodAnalytics month,
    required final PeriodAnalytics year,
    required final PeriodAnalytics allTime,
  }) = _$PeriodsImpl;

  factory _Periods.fromJson(Map<String, dynamic> json) = _$PeriodsImpl.fromJson;

  @override
  PeriodAnalytics get today;
  @override
  PeriodAnalytics get week;
  @override
  PeriodAnalytics get month;
  @override
  PeriodAnalytics get year;
  @override
  PeriodAnalytics get allTime;

  /// Create a copy of Periods
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PeriodsImplCopyWith<_$PeriodsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PeriodAnalytics _$PeriodAnalyticsFromJson(Map<String, dynamic> json) {
  return _PeriodAnalytics.fromJson(json);
}

/// @nodoc
mixin _$PeriodAnalytics {
  @JsonKey(name: 'transactionCount')
  int get transactions => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalAmount')
  double get amount => throw _privateConstructorUsedError;

  /// Serializes this PeriodAnalytics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PeriodAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PeriodAnalyticsCopyWith<PeriodAnalytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodAnalyticsCopyWith<$Res> {
  factory $PeriodAnalyticsCopyWith(
    PeriodAnalytics value,
    $Res Function(PeriodAnalytics) then,
  ) = _$PeriodAnalyticsCopyWithImpl<$Res, PeriodAnalytics>;
  @useResult
  $Res call({
    @JsonKey(name: 'transactionCount') int transactions,
    @JsonKey(name: 'totalAmount') double amount,
  });
}

/// @nodoc
class _$PeriodAnalyticsCopyWithImpl<$Res, $Val extends PeriodAnalytics>
    implements $PeriodAnalyticsCopyWith<$Res> {
  _$PeriodAnalyticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PeriodAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? transactions = null, Object? amount = null}) {
    return _then(
      _value.copyWith(
            transactions: null == transactions
                ? _value.transactions
                : transactions // ignore: cast_nullable_to_non_nullable
                      as int,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PeriodAnalyticsImplCopyWith<$Res>
    implements $PeriodAnalyticsCopyWith<$Res> {
  factory _$$PeriodAnalyticsImplCopyWith(
    _$PeriodAnalyticsImpl value,
    $Res Function(_$PeriodAnalyticsImpl) then,
  ) = __$$PeriodAnalyticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'transactionCount') int transactions,
    @JsonKey(name: 'totalAmount') double amount,
  });
}

/// @nodoc
class __$$PeriodAnalyticsImplCopyWithImpl<$Res>
    extends _$PeriodAnalyticsCopyWithImpl<$Res, _$PeriodAnalyticsImpl>
    implements _$$PeriodAnalyticsImplCopyWith<$Res> {
  __$$PeriodAnalyticsImplCopyWithImpl(
    _$PeriodAnalyticsImpl _value,
    $Res Function(_$PeriodAnalyticsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PeriodAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? transactions = null, Object? amount = null}) {
    return _then(
      _$PeriodAnalyticsImpl(
        transactions: null == transactions
            ? _value.transactions
            : transactions // ignore: cast_nullable_to_non_nullable
                  as int,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PeriodAnalyticsImpl implements _PeriodAnalytics {
  const _$PeriodAnalyticsImpl({
    @JsonKey(name: 'transactionCount') required this.transactions,
    @JsonKey(name: 'totalAmount') required this.amount,
  });

  factory _$PeriodAnalyticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeriodAnalyticsImplFromJson(json);

  @override
  @JsonKey(name: 'transactionCount')
  final int transactions;
  @override
  @JsonKey(name: 'totalAmount')
  final double amount;

  @override
  String toString() {
    return 'PeriodAnalytics(transactions: $transactions, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodAnalyticsImpl &&
            (identical(other.transactions, transactions) ||
                other.transactions == transactions) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, transactions, amount);

  /// Create a copy of PeriodAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodAnalyticsImplCopyWith<_$PeriodAnalyticsImpl> get copyWith =>
      __$$PeriodAnalyticsImplCopyWithImpl<_$PeriodAnalyticsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PeriodAnalyticsImplToJson(this);
  }
}

abstract class _PeriodAnalytics implements PeriodAnalytics {
  const factory _PeriodAnalytics({
    @JsonKey(name: 'transactionCount') required final int transactions,
    @JsonKey(name: 'totalAmount') required final double amount,
  }) = _$PeriodAnalyticsImpl;

  factory _PeriodAnalytics.fromJson(Map<String, dynamic> json) =
      _$PeriodAnalyticsImpl.fromJson;

  @override
  @JsonKey(name: 'transactionCount')
  int get transactions;
  @override
  @JsonKey(name: 'totalAmount')
  double get amount;

  /// Create a copy of PeriodAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PeriodAnalyticsImplCopyWith<_$PeriodAnalyticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopApps _$TopAppsFromJson(Map<String, dynamic> json) {
  return _TopApps.fromJson(json);
}

/// @nodoc
mixin _$TopApps {
  List<TopAppAnalytics> get byTransactionCount =>
      throw _privateConstructorUsedError;
  List<TopAppAnalytics> get byTotalAmount => throw _privateConstructorUsedError;

  /// Serializes this TopApps to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopApps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopAppsCopyWith<TopApps> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopAppsCopyWith<$Res> {
  factory $TopAppsCopyWith(TopApps value, $Res Function(TopApps) then) =
      _$TopAppsCopyWithImpl<$Res, TopApps>;
  @useResult
  $Res call({
    List<TopAppAnalytics> byTransactionCount,
    List<TopAppAnalytics> byTotalAmount,
  });
}

/// @nodoc
class _$TopAppsCopyWithImpl<$Res, $Val extends TopApps>
    implements $TopAppsCopyWith<$Res> {
  _$TopAppsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopApps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? byTransactionCount = null, Object? byTotalAmount = null}) {
    return _then(
      _value.copyWith(
            byTransactionCount: null == byTransactionCount
                ? _value.byTransactionCount
                : byTransactionCount // ignore: cast_nullable_to_non_nullable
                      as List<TopAppAnalytics>,
            byTotalAmount: null == byTotalAmount
                ? _value.byTotalAmount
                : byTotalAmount // ignore: cast_nullable_to_non_nullable
                      as List<TopAppAnalytics>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TopAppsImplCopyWith<$Res> implements $TopAppsCopyWith<$Res> {
  factory _$$TopAppsImplCopyWith(
    _$TopAppsImpl value,
    $Res Function(_$TopAppsImpl) then,
  ) = __$$TopAppsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<TopAppAnalytics> byTransactionCount,
    List<TopAppAnalytics> byTotalAmount,
  });
}

/// @nodoc
class __$$TopAppsImplCopyWithImpl<$Res>
    extends _$TopAppsCopyWithImpl<$Res, _$TopAppsImpl>
    implements _$$TopAppsImplCopyWith<$Res> {
  __$$TopAppsImplCopyWithImpl(
    _$TopAppsImpl _value,
    $Res Function(_$TopAppsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopApps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? byTransactionCount = null, Object? byTotalAmount = null}) {
    return _then(
      _$TopAppsImpl(
        byTransactionCount: null == byTransactionCount
            ? _value._byTransactionCount
            : byTransactionCount // ignore: cast_nullable_to_non_nullable
                  as List<TopAppAnalytics>,
        byTotalAmount: null == byTotalAmount
            ? _value._byTotalAmount
            : byTotalAmount // ignore: cast_nullable_to_non_nullable
                  as List<TopAppAnalytics>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TopAppsImpl implements _TopApps {
  const _$TopAppsImpl({
    required final List<TopAppAnalytics> byTransactionCount,
    required final List<TopAppAnalytics> byTotalAmount,
  }) : _byTransactionCount = byTransactionCount,
       _byTotalAmount = byTotalAmount;

  factory _$TopAppsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopAppsImplFromJson(json);

  final List<TopAppAnalytics> _byTransactionCount;
  @override
  List<TopAppAnalytics> get byTransactionCount {
    if (_byTransactionCount is EqualUnmodifiableListView)
      return _byTransactionCount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_byTransactionCount);
  }

  final List<TopAppAnalytics> _byTotalAmount;
  @override
  List<TopAppAnalytics> get byTotalAmount {
    if (_byTotalAmount is EqualUnmodifiableListView) return _byTotalAmount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_byTotalAmount);
  }

  @override
  String toString() {
    return 'TopApps(byTransactionCount: $byTransactionCount, byTotalAmount: $byTotalAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopAppsImpl &&
            const DeepCollectionEquality().equals(
              other._byTransactionCount,
              _byTransactionCount,
            ) &&
            const DeepCollectionEquality().equals(
              other._byTotalAmount,
              _byTotalAmount,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_byTransactionCount),
    const DeepCollectionEquality().hash(_byTotalAmount),
  );

  /// Create a copy of TopApps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopAppsImplCopyWith<_$TopAppsImpl> get copyWith =>
      __$$TopAppsImplCopyWithImpl<_$TopAppsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopAppsImplToJson(this);
  }
}

abstract class _TopApps implements TopApps {
  const factory _TopApps({
    required final List<TopAppAnalytics> byTransactionCount,
    required final List<TopAppAnalytics> byTotalAmount,
  }) = _$TopAppsImpl;

  factory _TopApps.fromJson(Map<String, dynamic> json) = _$TopAppsImpl.fromJson;

  @override
  List<TopAppAnalytics> get byTransactionCount;
  @override
  List<TopAppAnalytics> get byTotalAmount;

  /// Create a copy of TopApps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopAppsImplCopyWith<_$TopAppsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopAppAnalytics _$TopAppAnalyticsFromJson(Map<String, dynamic> json) {
  return _TopAppAnalytics.fromJson(json);
}

/// @nodoc
mixin _$TopAppAnalytics {
  String get appName => throw _privateConstructorUsedError;
  @JsonKey(name: 'transactionCount')
  int get transactions => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;

  /// Serializes this TopAppAnalytics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopAppAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopAppAnalyticsCopyWith<TopAppAnalytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopAppAnalyticsCopyWith<$Res> {
  factory $TopAppAnalyticsCopyWith(
    TopAppAnalytics value,
    $Res Function(TopAppAnalytics) then,
  ) = _$TopAppAnalyticsCopyWithImpl<$Res, TopAppAnalytics>;
  @useResult
  $Res call({
    String appName,
    @JsonKey(name: 'transactionCount') int transactions,
    double totalAmount,
  });
}

/// @nodoc
class _$TopAppAnalyticsCopyWithImpl<$Res, $Val extends TopAppAnalytics>
    implements $TopAppAnalyticsCopyWith<$Res> {
  _$TopAppAnalyticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopAppAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? transactions = null,
    Object? totalAmount = null,
  }) {
    return _then(
      _value.copyWith(
            appName: null == appName
                ? _value.appName
                : appName // ignore: cast_nullable_to_non_nullable
                      as String,
            transactions: null == transactions
                ? _value.transactions
                : transactions // ignore: cast_nullable_to_non_nullable
                      as int,
            totalAmount: null == totalAmount
                ? _value.totalAmount
                : totalAmount // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TopAppAnalyticsImplCopyWith<$Res>
    implements $TopAppAnalyticsCopyWith<$Res> {
  factory _$$TopAppAnalyticsImplCopyWith(
    _$TopAppAnalyticsImpl value,
    $Res Function(_$TopAppAnalyticsImpl) then,
  ) = __$$TopAppAnalyticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String appName,
    @JsonKey(name: 'transactionCount') int transactions,
    double totalAmount,
  });
}

/// @nodoc
class __$$TopAppAnalyticsImplCopyWithImpl<$Res>
    extends _$TopAppAnalyticsCopyWithImpl<$Res, _$TopAppAnalyticsImpl>
    implements _$$TopAppAnalyticsImplCopyWith<$Res> {
  __$$TopAppAnalyticsImplCopyWithImpl(
    _$TopAppAnalyticsImpl _value,
    $Res Function(_$TopAppAnalyticsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopAppAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? transactions = null,
    Object? totalAmount = null,
  }) {
    return _then(
      _$TopAppAnalyticsImpl(
        appName: null == appName
            ? _value.appName
            : appName // ignore: cast_nullable_to_non_nullable
                  as String,
        transactions: null == transactions
            ? _value.transactions
            : transactions // ignore: cast_nullable_to_non_nullable
                  as int,
        totalAmount: null == totalAmount
            ? _value.totalAmount
            : totalAmount // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TopAppAnalyticsImpl implements _TopAppAnalytics {
  const _$TopAppAnalyticsImpl({
    required this.appName,
    @JsonKey(name: 'transactionCount') required this.transactions,
    required this.totalAmount,
  });

  factory _$TopAppAnalyticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopAppAnalyticsImplFromJson(json);

  @override
  final String appName;
  @override
  @JsonKey(name: 'transactionCount')
  final int transactions;
  @override
  final double totalAmount;

  @override
  String toString() {
    return 'TopAppAnalytics(appName: $appName, transactions: $transactions, totalAmount: $totalAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopAppAnalyticsImpl &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.transactions, transactions) ||
                other.transactions == transactions) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, appName, transactions, totalAmount);

  /// Create a copy of TopAppAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopAppAnalyticsImplCopyWith<_$TopAppAnalyticsImpl> get copyWith =>
      __$$TopAppAnalyticsImplCopyWithImpl<_$TopAppAnalyticsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TopAppAnalyticsImplToJson(this);
  }
}

abstract class _TopAppAnalytics implements TopAppAnalytics {
  const factory _TopAppAnalytics({
    required final String appName,
    @JsonKey(name: 'transactionCount') required final int transactions,
    required final double totalAmount,
  }) = _$TopAppAnalyticsImpl;

  factory _TopAppAnalytics.fromJson(Map<String, dynamic> json) =
      _$TopAppAnalyticsImpl.fromJson;

  @override
  String get appName;
  @override
  @JsonKey(name: 'transactionCount')
  int get transactions;
  @override
  double get totalAmount;

  /// Create a copy of TopAppAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopAppAnalyticsImplCopyWith<_$TopAppAnalyticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
