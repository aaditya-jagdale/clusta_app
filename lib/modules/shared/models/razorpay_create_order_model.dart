import 'package:freezed_annotation/freezed_annotation.dart';

part 'razorpay_create_order_model.freezed.dart';
part 'razorpay_create_order_model.g.dart';

@freezed
class RazorpayOrderData with _$RazorpayOrderData {
  const factory RazorpayOrderData({
    @Default(Order()) Order order,
    @Default(RazorpayOrder()) RazorpayOrder razorpayOrder,
    String? customerId,
    @Default('') String itemName,
    @Default(0) int amount,
    @Default(PricingInfo()) PricingInfo pricingInfo,
    @Default(OrderMetadata()) OrderMetadata metadata,
  }) = _RazorpayOrderData;

  factory RazorpayOrderData.fromJson(Map<String, dynamic> json) =>
      _$RazorpayOrderDataFromJson(json);
}

@freezed
class Order with _$Order {
  const factory Order({
    @Default('') String id,
    @Default('') String userId,
    @Default(0) int amount,
    @Default('') String currency,
    @Default('') String status,
    @Default('') String paymentProviderId,
    @Default('') String itemType,
    @Default('') String itemId,
    String? planId,
    @Default(OrderOrderMetadata()) OrderOrderMetadata metadata,
    @Default('') String createdAt,
    @Default('') String updatedAt,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
class OrderOrderMetadata with _$OrderOrderMetadata {
  const factory OrderOrderMetadata({
    @Default(OrderRazorpayOrder()) OrderRazorpayOrder razorpayOrder,
    @Default(ItemDetails()) ItemDetails itemDetails,
    @Default('') String paymentType,
    @Default(false) bool isRecurring,
  }) = _OrderOrderMetadata;

  factory OrderOrderMetadata.fromJson(Map<String, dynamic> json) =>
      _$OrderOrderMetadataFromJson(json);
}

@freezed
class OrderRazorpayOrder with _$OrderRazorpayOrder {
  const factory OrderRazorpayOrder({
    @Default('') String id,
    @Default(0) int amount,
    @Default('') String currency,
    @Default('') String receipt,
  }) = _OrderRazorpayOrder;

  factory OrderRazorpayOrder.fromJson(Map<String, dynamic> json) =>
      _$OrderRazorpayOrderFromJson(json);
}

@freezed
class ItemDetails with _$ItemDetails {
  const factory ItemDetails({
    @Default('') String id,
    @Default('') String title,
    @Default('') String type,
  }) = _ItemDetails;

  factory ItemDetails.fromJson(Map<String, dynamic> json) =>
      _$ItemDetailsFromJson(json);
}

@freezed
class RazorpayOrder with _$RazorpayOrder {
  const factory RazorpayOrder({
    @Default('') String key,
    @Default(0) int amount,
    @Default('') String currency,
    @Default('') String order_id,
    @Default('') String name,
    @Default('') String description,
    @Default('') String image,
    @Default(RazorpayPrefill()) RazorpayPrefill prefill,
    @Default(RazorpayTheme()) RazorpayTheme theme,
    @Default(RazorpayMethod()) RazorpayMethod method,
    @Default(RazorpayRetry()) RazorpayRetry retry,
    @Default(RazorpayNotes()) RazorpayNotes notes,
  }) = _RazorpayOrder;

  factory RazorpayOrder.fromJson(Map<String, dynamic> json) =>
      _$RazorpayOrderFromJson(json);
}

@freezed
class RazorpayPrefill with _$RazorpayPrefill {
  const factory RazorpayPrefill({
    @Default('') String name,
    @Default('') String email,
    @Default('') String contact,
  }) = _RazorpayPrefill;

  factory RazorpayPrefill.fromJson(Map<String, dynamic> json) =>
      _$RazorpayPrefillFromJson(json);
}

@freezed
class RazorpayTheme with _$RazorpayTheme {
  const factory RazorpayTheme({@Default('') String color}) = _RazorpayTheme;

  factory RazorpayTheme.fromJson(Map<String, dynamic> json) =>
      _$RazorpayThemeFromJson(json);
}

@freezed
class RazorpayMethod with _$RazorpayMethod {
  const factory RazorpayMethod({
    @Default(true) bool card,
    @Default(true) bool netbanking,
    @Default(true) bool wallet,
    @Default(true) bool upi,
    @Default(true) bool paylater,
  }) = _RazorpayMethod;

  factory RazorpayMethod.fromJson(Map<String, dynamic> json) =>
      _$RazorpayMethodFromJson(json);
}

@freezed
class RazorpayRetry with _$RazorpayRetry {
  const factory RazorpayRetry({
    @Default(true) bool enabled,
    @Default(0) int max_count,
  }) = _RazorpayRetry;

  factory RazorpayRetry.fromJson(Map<String, dynamic> json) =>
      _$RazorpayRetryFromJson(json);
}

@freezed
class RazorpayNotes with _$RazorpayNotes {
  const factory RazorpayNotes({
    @Default('') String order_type,
    @Default('') String created_by,
  }) = _RazorpayNotes;

  factory RazorpayNotes.fromJson(Map<String, dynamic> json) =>
      _$RazorpayNotesFromJson(json);
}

@freezed
class PricingInfo with _$PricingInfo {
  const factory PricingInfo({
    @Default('') String source,
    String? billingCycle,
    @Default(false) bool useCustomAmount,
  }) = _PricingInfo;

  factory PricingInfo.fromJson(Map<String, dynamic> json) =>
      _$PricingInfoFromJson(json);
}

@freezed
class OrderMetadata with _$OrderMetadata {
  const factory OrderMetadata({
    @Default('') String itemType,
    @Default('') String itemName,
    @Default(0) int amount,
    @Default('') String currency,
    @Default(PricingInfo()) PricingInfo pricingInfo,
  }) = _OrderMetadata;

  factory OrderMetadata.fromJson(Map<String, dynamic> json) =>
      _$OrderMetadataFromJson(json);
}
