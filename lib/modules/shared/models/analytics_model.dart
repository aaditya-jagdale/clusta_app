import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_model.freezed.dart';
part 'analytics_model.g.dart';

@freezed
class AnalyticsResponseModel with _$AnalyticsResponseModel {
  const factory AnalyticsResponseModel({
    required Periods periods,
    required TopApps topApps,
  }) = _AnalyticsResponseModel;

  factory AnalyticsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsResponseModelFromJson(json);
}

@freezed
class Periods with _$Periods {
  const factory Periods({
    required PeriodAnalytics today,
    required PeriodAnalytics week,
    required PeriodAnalytics month,
    required PeriodAnalytics year,
    required PeriodAnalytics allTime,
  }) = _Periods;

  factory Periods.fromJson(Map<String, dynamic> json) =>
      _$PeriodsFromJson(json);
}

@freezed
class PeriodAnalytics with _$PeriodAnalytics {
  const factory PeriodAnalytics({
    @JsonKey(name: 'transactionCount') required int transactions,
    @JsonKey(name: 'totalAmount') required double amount,
  }) = _PeriodAnalytics;

  factory PeriodAnalytics.fromJson(Map<String, dynamic> json) =>
      _$PeriodAnalyticsFromJson(json);
}

@freezed
class TopApps with _$TopApps {
  const factory TopApps({
    required List<TopAppAnalytics> byTransactionCount,
    required List<TopAppAnalytics> byTotalAmount,
  }) = _TopApps;

  factory TopApps.fromJson(Map<String, dynamic> json) =>
      _$TopAppsFromJson(json);
}

@freezed
class TopAppAnalytics with _$TopAppAnalytics {
  const factory TopAppAnalytics({
    required String appName,
    @JsonKey(name: 'transactionCount') required int transactions,
    required double totalAmount,
  }) = _TopAppAnalytics;

  factory TopAppAnalytics.fromJson(Map<String, dynamic> json) =>
      _$TopAppAnalyticsFromJson(json);
}