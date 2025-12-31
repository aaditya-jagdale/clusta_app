// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'razorpay_create_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RazorpayOrderDataImpl _$$RazorpayOrderDataImplFromJson(
  Map<String, dynamic> json,
) => _$RazorpayOrderDataImpl(
  order: json['order'] == null
      ? const Order()
      : Order.fromJson(json['order'] as Map<String, dynamic>),
  razorpayOrder: json['razorpayOrder'] == null
      ? const RazorpayOrder()
      : RazorpayOrder.fromJson(json['razorpayOrder'] as Map<String, dynamic>),
  customerId: json['customerId'] as String?,
  itemName: json['itemName'] as String? ?? '',
  amount: (json['amount'] as num?)?.toInt() ?? 0,
  pricingInfo: json['pricingInfo'] == null
      ? const PricingInfo()
      : PricingInfo.fromJson(json['pricingInfo'] as Map<String, dynamic>),
  metadata: json['metadata'] == null
      ? const OrderMetadata()
      : OrderMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$RazorpayOrderDataImplToJson(
  _$RazorpayOrderDataImpl instance,
) => <String, dynamic>{
  'order': instance.order,
  'razorpayOrder': instance.razorpayOrder,
  'customerId': instance.customerId,
  'itemName': instance.itemName,
  'amount': instance.amount,
  'pricingInfo': instance.pricingInfo,
  'metadata': instance.metadata,
};

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
  id: json['id'] as String? ?? '',
  userId: json['userId'] as String? ?? '',
  amount: (json['amount'] as num?)?.toInt() ?? 0,
  currency: json['currency'] as String? ?? '',
  status: json['status'] as String? ?? '',
  paymentProviderId: json['paymentProviderId'] as String? ?? '',
  itemType: json['itemType'] as String? ?? '',
  itemId: json['itemId'] as String? ?? '',
  planId: json['planId'] as String?,
  metadata: json['metadata'] == null
      ? const OrderOrderMetadata()
      : OrderOrderMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
  createdAt: json['createdAt'] as String? ?? '',
  updatedAt: json['updatedAt'] as String? ?? '',
);

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'amount': instance.amount,
      'currency': instance.currency,
      'status': instance.status,
      'paymentProviderId': instance.paymentProviderId,
      'itemType': instance.itemType,
      'itemId': instance.itemId,
      'planId': instance.planId,
      'metadata': instance.metadata,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$OrderOrderMetadataImpl _$$OrderOrderMetadataImplFromJson(
  Map<String, dynamic> json,
) => _$OrderOrderMetadataImpl(
  razorpayOrder: json['razorpayOrder'] == null
      ? const OrderRazorpayOrder()
      : OrderRazorpayOrder.fromJson(
          json['razorpayOrder'] as Map<String, dynamic>,
        ),
  itemDetails: json['itemDetails'] == null
      ? const ItemDetails()
      : ItemDetails.fromJson(json['itemDetails'] as Map<String, dynamic>),
  paymentType: json['paymentType'] as String? ?? '',
  isRecurring: json['isRecurring'] as bool? ?? false,
);

Map<String, dynamic> _$$OrderOrderMetadataImplToJson(
  _$OrderOrderMetadataImpl instance,
) => <String, dynamic>{
  'razorpayOrder': instance.razorpayOrder,
  'itemDetails': instance.itemDetails,
  'paymentType': instance.paymentType,
  'isRecurring': instance.isRecurring,
};

_$OrderRazorpayOrderImpl _$$OrderRazorpayOrderImplFromJson(
  Map<String, dynamic> json,
) => _$OrderRazorpayOrderImpl(
  id: json['id'] as String? ?? '',
  amount: (json['amount'] as num?)?.toInt() ?? 0,
  currency: json['currency'] as String? ?? '',
  receipt: json['receipt'] as String? ?? '',
);

Map<String, dynamic> _$$OrderRazorpayOrderImplToJson(
  _$OrderRazorpayOrderImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'amount': instance.amount,
  'currency': instance.currency,
  'receipt': instance.receipt,
};

_$ItemDetailsImpl _$$ItemDetailsImplFromJson(Map<String, dynamic> json) =>
    _$ItemDetailsImpl(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$$ItemDetailsImplToJson(_$ItemDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
    };

_$RazorpayOrderImpl _$$RazorpayOrderImplFromJson(Map<String, dynamic> json) =>
    _$RazorpayOrderImpl(
      key: json['key'] as String? ?? '',
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      currency: json['currency'] as String? ?? '',
      order_id: json['order_id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      image: json['image'] as String? ?? '',
      prefill: json['prefill'] == null
          ? const RazorpayPrefill()
          : RazorpayPrefill.fromJson(json['prefill'] as Map<String, dynamic>),
      theme: json['theme'] == null
          ? const RazorpayTheme()
          : RazorpayTheme.fromJson(json['theme'] as Map<String, dynamic>),
      method: json['method'] == null
          ? const RazorpayMethod()
          : RazorpayMethod.fromJson(json['method'] as Map<String, dynamic>),
      retry: json['retry'] == null
          ? const RazorpayRetry()
          : RazorpayRetry.fromJson(json['retry'] as Map<String, dynamic>),
      notes: json['notes'] == null
          ? const RazorpayNotes()
          : RazorpayNotes.fromJson(json['notes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RazorpayOrderImplToJson(_$RazorpayOrderImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'amount': instance.amount,
      'currency': instance.currency,
      'order_id': instance.order_id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'prefill': instance.prefill,
      'theme': instance.theme,
      'method': instance.method,
      'retry': instance.retry,
      'notes': instance.notes,
    };

_$RazorpayPrefillImpl _$$RazorpayPrefillImplFromJson(
  Map<String, dynamic> json,
) => _$RazorpayPrefillImpl(
  name: json['name'] as String? ?? '',
  email: json['email'] as String? ?? '',
  contact: json['contact'] as String? ?? '',
);

Map<String, dynamic> _$$RazorpayPrefillImplToJson(
  _$RazorpayPrefillImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'contact': instance.contact,
};

_$RazorpayThemeImpl _$$RazorpayThemeImplFromJson(Map<String, dynamic> json) =>
    _$RazorpayThemeImpl(color: json['color'] as String? ?? '');

Map<String, dynamic> _$$RazorpayThemeImplToJson(_$RazorpayThemeImpl instance) =>
    <String, dynamic>{'color': instance.color};

_$RazorpayMethodImpl _$$RazorpayMethodImplFromJson(Map<String, dynamic> json) =>
    _$RazorpayMethodImpl(
      card: json['card'] as bool? ?? true,
      netbanking: json['netbanking'] as bool? ?? true,
      wallet: json['wallet'] as bool? ?? true,
      upi: json['upi'] as bool? ?? true,
      paylater: json['paylater'] as bool? ?? true,
    );

Map<String, dynamic> _$$RazorpayMethodImplToJson(
  _$RazorpayMethodImpl instance,
) => <String, dynamic>{
  'card': instance.card,
  'netbanking': instance.netbanking,
  'wallet': instance.wallet,
  'upi': instance.upi,
  'paylater': instance.paylater,
};

_$RazorpayRetryImpl _$$RazorpayRetryImplFromJson(Map<String, dynamic> json) =>
    _$RazorpayRetryImpl(
      enabled: json['enabled'] as bool? ?? true,
      max_count: (json['max_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$RazorpayRetryImplToJson(_$RazorpayRetryImpl instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'max_count': instance.max_count,
    };

_$RazorpayNotesImpl _$$RazorpayNotesImplFromJson(Map<String, dynamic> json) =>
    _$RazorpayNotesImpl(
      order_type: json['order_type'] as String? ?? '',
      created_by: json['created_by'] as String? ?? '',
    );

Map<String, dynamic> _$$RazorpayNotesImplToJson(_$RazorpayNotesImpl instance) =>
    <String, dynamic>{
      'order_type': instance.order_type,
      'created_by': instance.created_by,
    };

_$PricingInfoImpl _$$PricingInfoImplFromJson(Map<String, dynamic> json) =>
    _$PricingInfoImpl(
      source: json['source'] as String? ?? '',
      billingCycle: json['billingCycle'] as String?,
      useCustomAmount: json['useCustomAmount'] as bool? ?? false,
    );

Map<String, dynamic> _$$PricingInfoImplToJson(_$PricingInfoImpl instance) =>
    <String, dynamic>{
      'source': instance.source,
      'billingCycle': instance.billingCycle,
      'useCustomAmount': instance.useCustomAmount,
    };

_$OrderMetadataImpl _$$OrderMetadataImplFromJson(Map<String, dynamic> json) =>
    _$OrderMetadataImpl(
      itemType: json['itemType'] as String? ?? '',
      itemName: json['itemName'] as String? ?? '',
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      currency: json['currency'] as String? ?? '',
      pricingInfo: json['pricingInfo'] == null
          ? const PricingInfo()
          : PricingInfo.fromJson(json['pricingInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderMetadataImplToJson(_$OrderMetadataImpl instance) =>
    <String, dynamic>{
      'itemType': instance.itemType,
      'itemName': instance.itemName,
      'amount': instance.amount,
      'currency': instance.currency,
      'pricingInfo': instance.pricingInfo,
    };
