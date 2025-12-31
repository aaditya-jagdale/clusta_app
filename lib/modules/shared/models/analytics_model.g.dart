// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalyticsResponseModelImpl _$$AnalyticsResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$AnalyticsResponseModelImpl(
  periods: Periods.fromJson(json['periods'] as Map<String, dynamic>),
  topApps: TopApps.fromJson(json['topApps'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AnalyticsResponseModelImplToJson(
  _$AnalyticsResponseModelImpl instance,
) => <String, dynamic>{
  'periods': instance.periods,
  'topApps': instance.topApps,
};

_$PeriodsImpl _$$PeriodsImplFromJson(Map<String, dynamic> json) =>
    _$PeriodsImpl(
      today: PeriodAnalytics.fromJson(json['today'] as Map<String, dynamic>),
      week: PeriodAnalytics.fromJson(json['week'] as Map<String, dynamic>),
      month: PeriodAnalytics.fromJson(json['month'] as Map<String, dynamic>),
      year: PeriodAnalytics.fromJson(json['year'] as Map<String, dynamic>),
      allTime: PeriodAnalytics.fromJson(
        json['allTime'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$PeriodsImplToJson(_$PeriodsImpl instance) =>
    <String, dynamic>{
      'today': instance.today,
      'week': instance.week,
      'month': instance.month,
      'year': instance.year,
      'allTime': instance.allTime,
    };

_$PeriodAnalyticsImpl _$$PeriodAnalyticsImplFromJson(
  Map<String, dynamic> json,
) => _$PeriodAnalyticsImpl(
  transactions: (json['transactionCount'] as num).toInt(),
  amount: (json['totalAmount'] as num).toDouble(),
);

Map<String, dynamic> _$$PeriodAnalyticsImplToJson(
  _$PeriodAnalyticsImpl instance,
) => <String, dynamic>{
  'transactionCount': instance.transactions,
  'totalAmount': instance.amount,
};

_$TopAppsImpl _$$TopAppsImplFromJson(Map<String, dynamic> json) =>
    _$TopAppsImpl(
      byTransactionCount: (json['byTransactionCount'] as List<dynamic>)
          .map((e) => TopAppAnalytics.fromJson(e as Map<String, dynamic>))
          .toList(),
      byTotalAmount: (json['byTotalAmount'] as List<dynamic>)
          .map((e) => TopAppAnalytics.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopAppsImplToJson(_$TopAppsImpl instance) =>
    <String, dynamic>{
      'byTransactionCount': instance.byTransactionCount,
      'byTotalAmount': instance.byTotalAmount,
    };

_$TopAppAnalyticsImpl _$$TopAppAnalyticsImplFromJson(
  Map<String, dynamic> json,
) => _$TopAppAnalyticsImpl(
  appName: json['appName'] as String,
  transactions: (json['transactionCount'] as num).toInt(),
  totalAmount: (json['totalAmount'] as num).toDouble(),
);

Map<String, dynamic> _$$TopAppAnalyticsImplToJson(
  _$TopAppAnalyticsImpl instance,
) => <String, dynamic>{
  'appName': instance.appName,
  'transactionCount': instance.transactions,
  'totalAmount': instance.totalAmount,
};
