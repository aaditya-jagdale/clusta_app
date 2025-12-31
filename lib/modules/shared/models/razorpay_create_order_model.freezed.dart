// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'razorpay_create_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RazorpayOrderData _$RazorpayOrderDataFromJson(Map<String, dynamic> json) {
  return _RazorpayOrderData.fromJson(json);
}

/// @nodoc
mixin _$RazorpayOrderData {
  Order get order => throw _privateConstructorUsedError;
  RazorpayOrder get razorpayOrder => throw _privateConstructorUsedError;
  String? get customerId => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  PricingInfo get pricingInfo => throw _privateConstructorUsedError;
  OrderMetadata get metadata => throw _privateConstructorUsedError;

  /// Serializes this RazorpayOrderData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RazorpayOrderData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RazorpayOrderDataCopyWith<RazorpayOrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RazorpayOrderDataCopyWith<$Res> {
  factory $RazorpayOrderDataCopyWith(
    RazorpayOrderData value,
    $Res Function(RazorpayOrderData) then,
  ) = _$RazorpayOrderDataCopyWithImpl<$Res, RazorpayOrderData>;
  @useResult
  $Res call({
    Order order,
    RazorpayOrder razorpayOrder,
    String? customerId,
    String itemName,
    int amount,
    PricingInfo pricingInfo,
    OrderMetadata metadata,
  });

  $OrderCopyWith<$Res> get order;
  $RazorpayOrderCopyWith<$Res> get razorpayOrder;
  $PricingInfoCopyWith<$Res> get pricingInfo;
  $OrderMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$RazorpayOrderDataCopyWithImpl<$Res, $Val extends RazorpayOrderData>
    implements $RazorpayOrderDataCopyWith<$Res> {
  _$RazorpayOrderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RazorpayOrderData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? razorpayOrder = null,
    Object? customerId = freezed,
    Object? itemName = null,
    Object? amount = null,
    Object? pricingInfo = null,
    Object? metadata = null,
  }) {
    return _then(
      _value.copyWith(
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as Order,
            razorpayOrder: null == razorpayOrder
                ? _value.razorpayOrder
                : razorpayOrder // ignore: cast_nullable_to_non_nullable
                      as RazorpayOrder,
            customerId: freezed == customerId
                ? _value.customerId
                : customerId // ignore: cast_nullable_to_non_nullable
                      as String?,
            itemName: null == itemName
                ? _value.itemName
                : itemName // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as int,
            pricingInfo: null == pricingInfo
                ? _value.pricingInfo
                : pricingInfo // ignore: cast_nullable_to_non_nullable
                      as PricingInfo,
            metadata: null == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as OrderMetadata,
          )
          as $Val,
    );
  }

  /// Create a copy of RazorpayOrderData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }

  /// Create a copy of RazorpayOrderData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RazorpayOrderCopyWith<$Res> get razorpayOrder {
    return $RazorpayOrderCopyWith<$Res>(_value.razorpayOrder, (value) {
      return _then(_value.copyWith(razorpayOrder: value) as $Val);
    });
  }

  /// Create a copy of RazorpayOrderData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PricingInfoCopyWith<$Res> get pricingInfo {
    return $PricingInfoCopyWith<$Res>(_value.pricingInfo, (value) {
      return _then(_value.copyWith(pricingInfo: value) as $Val);
    });
  }

  /// Create a copy of RazorpayOrderData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderMetadataCopyWith<$Res> get metadata {
    return $OrderMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RazorpayOrderDataImplCopyWith<$Res>
    implements $RazorpayOrderDataCopyWith<$Res> {
  factory _$$RazorpayOrderDataImplCopyWith(
    _$RazorpayOrderDataImpl value,
    $Res Function(_$RazorpayOrderDataImpl) then,
  ) = __$$RazorpayOrderDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Order order,
    RazorpayOrder razorpayOrder,
    String? customerId,
    String itemName,
    int amount,
    PricingInfo pricingInfo,
    OrderMetadata metadata,
  });

  @override
  $OrderCopyWith<$Res> get order;
  @override
  $RazorpayOrderCopyWith<$Res> get razorpayOrder;
  @override
  $PricingInfoCopyWith<$Res> get pricingInfo;
  @override
  $OrderMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$RazorpayOrderDataImplCopyWithImpl<$Res>
    extends _$RazorpayOrderDataCopyWithImpl<$Res, _$RazorpayOrderDataImpl>
    implements _$$RazorpayOrderDataImplCopyWith<$Res> {
  __$$RazorpayOrderDataImplCopyWithImpl(
    _$RazorpayOrderDataImpl _value,
    $Res Function(_$RazorpayOrderDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RazorpayOrderData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? razorpayOrder = null,
    Object? customerId = freezed,
    Object? itemName = null,
    Object? amount = null,
    Object? pricingInfo = null,
    Object? metadata = null,
  }) {
    return _then(
      _$RazorpayOrderDataImpl(
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as Order,
        razorpayOrder: null == razorpayOrder
            ? _value.razorpayOrder
            : razorpayOrder // ignore: cast_nullable_to_non_nullable
                  as RazorpayOrder,
        customerId: freezed == customerId
            ? _value.customerId
            : customerId // ignore: cast_nullable_to_non_nullable
                  as String?,
        itemName: null == itemName
            ? _value.itemName
            : itemName // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
        pricingInfo: null == pricingInfo
            ? _value.pricingInfo
            : pricingInfo // ignore: cast_nullable_to_non_nullable
                  as PricingInfo,
        metadata: null == metadata
            ? _value.metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as OrderMetadata,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RazorpayOrderDataImpl implements _RazorpayOrderData {
  const _$RazorpayOrderDataImpl({
    this.order = const Order(),
    this.razorpayOrder = const RazorpayOrder(),
    this.customerId,
    this.itemName = '',
    this.amount = 0,
    this.pricingInfo = const PricingInfo(),
    this.metadata = const OrderMetadata(),
  });

  factory _$RazorpayOrderDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RazorpayOrderDataImplFromJson(json);

  @override
  @JsonKey()
  final Order order;
  @override
  @JsonKey()
  final RazorpayOrder razorpayOrder;
  @override
  final String? customerId;
  @override
  @JsonKey()
  final String itemName;
  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final PricingInfo pricingInfo;
  @override
  @JsonKey()
  final OrderMetadata metadata;

  @override
  String toString() {
    return 'RazorpayOrderData(order: $order, razorpayOrder: $razorpayOrder, customerId: $customerId, itemName: $itemName, amount: $amount, pricingInfo: $pricingInfo, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RazorpayOrderDataImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.razorpayOrder, razorpayOrder) ||
                other.razorpayOrder == razorpayOrder) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.pricingInfo, pricingInfo) ||
                other.pricingInfo == pricingInfo) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    order,
    razorpayOrder,
    customerId,
    itemName,
    amount,
    pricingInfo,
    metadata,
  );

  /// Create a copy of RazorpayOrderData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RazorpayOrderDataImplCopyWith<_$RazorpayOrderDataImpl> get copyWith =>
      __$$RazorpayOrderDataImplCopyWithImpl<_$RazorpayOrderDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RazorpayOrderDataImplToJson(this);
  }
}

abstract class _RazorpayOrderData implements RazorpayOrderData {
  const factory _RazorpayOrderData({
    final Order order,
    final RazorpayOrder razorpayOrder,
    final String? customerId,
    final String itemName,
    final int amount,
    final PricingInfo pricingInfo,
    final OrderMetadata metadata,
  }) = _$RazorpayOrderDataImpl;

  factory _RazorpayOrderData.fromJson(Map<String, dynamic> json) =
      _$RazorpayOrderDataImpl.fromJson;

  @override
  Order get order;
  @override
  RazorpayOrder get razorpayOrder;
  @override
  String? get customerId;
  @override
  String get itemName;
  @override
  int get amount;
  @override
  PricingInfo get pricingInfo;
  @override
  OrderMetadata get metadata;

  /// Create a copy of RazorpayOrderData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RazorpayOrderDataImplCopyWith<_$RazorpayOrderDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get paymentProviderId => throw _privateConstructorUsedError;
  String get itemType => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String? get planId => throw _privateConstructorUsedError;
  OrderOrderMetadata get metadata => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call({
    String id,
    String userId,
    int amount,
    String currency,
    String status,
    String paymentProviderId,
    String itemType,
    String itemId,
    String? planId,
    OrderOrderMetadata metadata,
    String createdAt,
    String updatedAt,
  });

  $OrderOrderMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? amount = null,
    Object? currency = null,
    Object? status = null,
    Object? paymentProviderId = null,
    Object? itemType = null,
    Object? itemId = null,
    Object? planId = freezed,
    Object? metadata = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as int,
            currency: null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            paymentProviderId: null == paymentProviderId
                ? _value.paymentProviderId
                : paymentProviderId // ignore: cast_nullable_to_non_nullable
                      as String,
            itemType: null == itemType
                ? _value.itemType
                : itemType // ignore: cast_nullable_to_non_nullable
                      as String,
            itemId: null == itemId
                ? _value.itemId
                : itemId // ignore: cast_nullable_to_non_nullable
                      as String,
            planId: freezed == planId
                ? _value.planId
                : planId // ignore: cast_nullable_to_non_nullable
                      as String?,
            metadata: null == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as OrderOrderMetadata,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderOrderMetadataCopyWith<$Res> get metadata {
    return $OrderOrderMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
    _$OrderImpl value,
    $Res Function(_$OrderImpl) then,
  ) = __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String userId,
    int amount,
    String currency,
    String status,
    String paymentProviderId,
    String itemType,
    String itemId,
    String? planId,
    OrderOrderMetadata metadata,
    String createdAt,
    String updatedAt,
  });

  @override
  $OrderOrderMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
    _$OrderImpl _value,
    $Res Function(_$OrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? amount = null,
    Object? currency = null,
    Object? status = null,
    Object? paymentProviderId = null,
    Object? itemType = null,
    Object? itemId = null,
    Object? planId = freezed,
    Object? metadata = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$OrderImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        paymentProviderId: null == paymentProviderId
            ? _value.paymentProviderId
            : paymentProviderId // ignore: cast_nullable_to_non_nullable
                  as String,
        itemType: null == itemType
            ? _value.itemType
            : itemType // ignore: cast_nullable_to_non_nullable
                  as String,
        itemId: null == itemId
            ? _value.itemId
            : itemId // ignore: cast_nullable_to_non_nullable
                  as String,
        planId: freezed == planId
            ? _value.planId
            : planId // ignore: cast_nullable_to_non_nullable
                  as String?,
        metadata: null == metadata
            ? _value.metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as OrderOrderMetadata,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  const _$OrderImpl({
    this.id = '',
    this.userId = '',
    this.amount = 0,
    this.currency = '',
    this.status = '',
    this.paymentProviderId = '',
    this.itemType = '',
    this.itemId = '',
    this.planId,
    this.metadata = const OrderOrderMetadata(),
    this.createdAt = '',
    this.updatedAt = '',
  });

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String userId;
  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String paymentProviderId;
  @override
  @JsonKey()
  final String itemType;
  @override
  @JsonKey()
  final String itemId;
  @override
  final String? planId;
  @override
  @JsonKey()
  final OrderOrderMetadata metadata;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;

  @override
  String toString() {
    return 'Order(id: $id, userId: $userId, amount: $amount, currency: $currency, status: $status, paymentProviderId: $paymentProviderId, itemType: $itemType, itemId: $itemId, planId: $planId, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentProviderId, paymentProviderId) ||
                other.paymentProviderId == paymentProviderId) &&
            (identical(other.itemType, itemType) ||
                other.itemType == itemType) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.planId, planId) || other.planId == planId) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    amount,
    currency,
    status,
    paymentProviderId,
    itemType,
    itemId,
    planId,
    metadata,
    createdAt,
    updatedAt,
  );

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(this);
  }
}

abstract class _Order implements Order {
  const factory _Order({
    final String id,
    final String userId,
    final int amount,
    final String currency,
    final String status,
    final String paymentProviderId,
    final String itemType,
    final String itemId,
    final String? planId,
    final OrderOrderMetadata metadata,
    final String createdAt,
    final String updatedAt,
  }) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  int get amount;
  @override
  String get currency;
  @override
  String get status;
  @override
  String get paymentProviderId;
  @override
  String get itemType;
  @override
  String get itemId;
  @override
  String? get planId;
  @override
  OrderOrderMetadata get metadata;
  @override
  String get createdAt;
  @override
  String get updatedAt;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderOrderMetadata _$OrderOrderMetadataFromJson(Map<String, dynamic> json) {
  return _OrderOrderMetadata.fromJson(json);
}

/// @nodoc
mixin _$OrderOrderMetadata {
  OrderRazorpayOrder get razorpayOrder => throw _privateConstructorUsedError;
  ItemDetails get itemDetails => throw _privateConstructorUsedError;
  String get paymentType => throw _privateConstructorUsedError;
  bool get isRecurring => throw _privateConstructorUsedError;

  /// Serializes this OrderOrderMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderOrderMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderOrderMetadataCopyWith<OrderOrderMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderOrderMetadataCopyWith<$Res> {
  factory $OrderOrderMetadataCopyWith(
    OrderOrderMetadata value,
    $Res Function(OrderOrderMetadata) then,
  ) = _$OrderOrderMetadataCopyWithImpl<$Res, OrderOrderMetadata>;
  @useResult
  $Res call({
    OrderRazorpayOrder razorpayOrder,
    ItemDetails itemDetails,
    String paymentType,
    bool isRecurring,
  });

  $OrderRazorpayOrderCopyWith<$Res> get razorpayOrder;
  $ItemDetailsCopyWith<$Res> get itemDetails;
}

/// @nodoc
class _$OrderOrderMetadataCopyWithImpl<$Res, $Val extends OrderOrderMetadata>
    implements $OrderOrderMetadataCopyWith<$Res> {
  _$OrderOrderMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderOrderMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? razorpayOrder = null,
    Object? itemDetails = null,
    Object? paymentType = null,
    Object? isRecurring = null,
  }) {
    return _then(
      _value.copyWith(
            razorpayOrder: null == razorpayOrder
                ? _value.razorpayOrder
                : razorpayOrder // ignore: cast_nullable_to_non_nullable
                      as OrderRazorpayOrder,
            itemDetails: null == itemDetails
                ? _value.itemDetails
                : itemDetails // ignore: cast_nullable_to_non_nullable
                      as ItemDetails,
            paymentType: null == paymentType
                ? _value.paymentType
                : paymentType // ignore: cast_nullable_to_non_nullable
                      as String,
            isRecurring: null == isRecurring
                ? _value.isRecurring
                : isRecurring // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderOrderMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderRazorpayOrderCopyWith<$Res> get razorpayOrder {
    return $OrderRazorpayOrderCopyWith<$Res>(_value.razorpayOrder, (value) {
      return _then(_value.copyWith(razorpayOrder: value) as $Val);
    });
  }

  /// Create a copy of OrderOrderMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemDetailsCopyWith<$Res> get itemDetails {
    return $ItemDetailsCopyWith<$Res>(_value.itemDetails, (value) {
      return _then(_value.copyWith(itemDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderOrderMetadataImplCopyWith<$Res>
    implements $OrderOrderMetadataCopyWith<$Res> {
  factory _$$OrderOrderMetadataImplCopyWith(
    _$OrderOrderMetadataImpl value,
    $Res Function(_$OrderOrderMetadataImpl) then,
  ) = __$$OrderOrderMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    OrderRazorpayOrder razorpayOrder,
    ItemDetails itemDetails,
    String paymentType,
    bool isRecurring,
  });

  @override
  $OrderRazorpayOrderCopyWith<$Res> get razorpayOrder;
  @override
  $ItemDetailsCopyWith<$Res> get itemDetails;
}

/// @nodoc
class __$$OrderOrderMetadataImplCopyWithImpl<$Res>
    extends _$OrderOrderMetadataCopyWithImpl<$Res, _$OrderOrderMetadataImpl>
    implements _$$OrderOrderMetadataImplCopyWith<$Res> {
  __$$OrderOrderMetadataImplCopyWithImpl(
    _$OrderOrderMetadataImpl _value,
    $Res Function(_$OrderOrderMetadataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderOrderMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? razorpayOrder = null,
    Object? itemDetails = null,
    Object? paymentType = null,
    Object? isRecurring = null,
  }) {
    return _then(
      _$OrderOrderMetadataImpl(
        razorpayOrder: null == razorpayOrder
            ? _value.razorpayOrder
            : razorpayOrder // ignore: cast_nullable_to_non_nullable
                  as OrderRazorpayOrder,
        itemDetails: null == itemDetails
            ? _value.itemDetails
            : itemDetails // ignore: cast_nullable_to_non_nullable
                  as ItemDetails,
        paymentType: null == paymentType
            ? _value.paymentType
            : paymentType // ignore: cast_nullable_to_non_nullable
                  as String,
        isRecurring: null == isRecurring
            ? _value.isRecurring
            : isRecurring // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderOrderMetadataImpl implements _OrderOrderMetadata {
  const _$OrderOrderMetadataImpl({
    this.razorpayOrder = const OrderRazorpayOrder(),
    this.itemDetails = const ItemDetails(),
    this.paymentType = '',
    this.isRecurring = false,
  });

  factory _$OrderOrderMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderOrderMetadataImplFromJson(json);

  @override
  @JsonKey()
  final OrderRazorpayOrder razorpayOrder;
  @override
  @JsonKey()
  final ItemDetails itemDetails;
  @override
  @JsonKey()
  final String paymentType;
  @override
  @JsonKey()
  final bool isRecurring;

  @override
  String toString() {
    return 'OrderOrderMetadata(razorpayOrder: $razorpayOrder, itemDetails: $itemDetails, paymentType: $paymentType, isRecurring: $isRecurring)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderOrderMetadataImpl &&
            (identical(other.razorpayOrder, razorpayOrder) ||
                other.razorpayOrder == razorpayOrder) &&
            (identical(other.itemDetails, itemDetails) ||
                other.itemDetails == itemDetails) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.isRecurring, isRecurring) ||
                other.isRecurring == isRecurring));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    razorpayOrder,
    itemDetails,
    paymentType,
    isRecurring,
  );

  /// Create a copy of OrderOrderMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderOrderMetadataImplCopyWith<_$OrderOrderMetadataImpl> get copyWith =>
      __$$OrderOrderMetadataImplCopyWithImpl<_$OrderOrderMetadataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderOrderMetadataImplToJson(this);
  }
}

abstract class _OrderOrderMetadata implements OrderOrderMetadata {
  const factory _OrderOrderMetadata({
    final OrderRazorpayOrder razorpayOrder,
    final ItemDetails itemDetails,
    final String paymentType,
    final bool isRecurring,
  }) = _$OrderOrderMetadataImpl;

  factory _OrderOrderMetadata.fromJson(Map<String, dynamic> json) =
      _$OrderOrderMetadataImpl.fromJson;

  @override
  OrderRazorpayOrder get razorpayOrder;
  @override
  ItemDetails get itemDetails;
  @override
  String get paymentType;
  @override
  bool get isRecurring;

  /// Create a copy of OrderOrderMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderOrderMetadataImplCopyWith<_$OrderOrderMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderRazorpayOrder _$OrderRazorpayOrderFromJson(Map<String, dynamic> json) {
  return _OrderRazorpayOrder.fromJson(json);
}

/// @nodoc
mixin _$OrderRazorpayOrder {
  String get id => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get receipt => throw _privateConstructorUsedError;

  /// Serializes this OrderRazorpayOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderRazorpayOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderRazorpayOrderCopyWith<OrderRazorpayOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderRazorpayOrderCopyWith<$Res> {
  factory $OrderRazorpayOrderCopyWith(
    OrderRazorpayOrder value,
    $Res Function(OrderRazorpayOrder) then,
  ) = _$OrderRazorpayOrderCopyWithImpl<$Res, OrderRazorpayOrder>;
  @useResult
  $Res call({String id, int amount, String currency, String receipt});
}

/// @nodoc
class _$OrderRazorpayOrderCopyWithImpl<$Res, $Val extends OrderRazorpayOrder>
    implements $OrderRazorpayOrderCopyWith<$Res> {
  _$OrderRazorpayOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderRazorpayOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? currency = null,
    Object? receipt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as int,
            currency: null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String,
            receipt: null == receipt
                ? _value.receipt
                : receipt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderRazorpayOrderImplCopyWith<$Res>
    implements $OrderRazorpayOrderCopyWith<$Res> {
  factory _$$OrderRazorpayOrderImplCopyWith(
    _$OrderRazorpayOrderImpl value,
    $Res Function(_$OrderRazorpayOrderImpl) then,
  ) = __$$OrderRazorpayOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int amount, String currency, String receipt});
}

/// @nodoc
class __$$OrderRazorpayOrderImplCopyWithImpl<$Res>
    extends _$OrderRazorpayOrderCopyWithImpl<$Res, _$OrderRazorpayOrderImpl>
    implements _$$OrderRazorpayOrderImplCopyWith<$Res> {
  __$$OrderRazorpayOrderImplCopyWithImpl(
    _$OrderRazorpayOrderImpl _value,
    $Res Function(_$OrderRazorpayOrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderRazorpayOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? currency = null,
    Object? receipt = null,
  }) {
    return _then(
      _$OrderRazorpayOrderImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
        receipt: null == receipt
            ? _value.receipt
            : receipt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderRazorpayOrderImpl implements _OrderRazorpayOrder {
  const _$OrderRazorpayOrderImpl({
    this.id = '',
    this.amount = 0,
    this.currency = '',
    this.receipt = '',
  });

  factory _$OrderRazorpayOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderRazorpayOrderImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey()
  final String receipt;

  @override
  String toString() {
    return 'OrderRazorpayOrder(id: $id, amount: $amount, currency: $currency, receipt: $receipt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderRazorpayOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.receipt, receipt) || other.receipt == receipt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, amount, currency, receipt);

  /// Create a copy of OrderRazorpayOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderRazorpayOrderImplCopyWith<_$OrderRazorpayOrderImpl> get copyWith =>
      __$$OrderRazorpayOrderImplCopyWithImpl<_$OrderRazorpayOrderImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderRazorpayOrderImplToJson(this);
  }
}

abstract class _OrderRazorpayOrder implements OrderRazorpayOrder {
  const factory _OrderRazorpayOrder({
    final String id,
    final int amount,
    final String currency,
    final String receipt,
  }) = _$OrderRazorpayOrderImpl;

  factory _OrderRazorpayOrder.fromJson(Map<String, dynamic> json) =
      _$OrderRazorpayOrderImpl.fromJson;

  @override
  String get id;
  @override
  int get amount;
  @override
  String get currency;
  @override
  String get receipt;

  /// Create a copy of OrderRazorpayOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderRazorpayOrderImplCopyWith<_$OrderRazorpayOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemDetails _$ItemDetailsFromJson(Map<String, dynamic> json) {
  return _ItemDetails.fromJson(json);
}

/// @nodoc
mixin _$ItemDetails {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this ItemDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemDetailsCopyWith<ItemDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDetailsCopyWith<$Res> {
  factory $ItemDetailsCopyWith(
    ItemDetails value,
    $Res Function(ItemDetails) then,
  ) = _$ItemDetailsCopyWithImpl<$Res, ItemDetails>;
  @useResult
  $Res call({String id, String title, String type});
}

/// @nodoc
class _$ItemDetailsCopyWithImpl<$Res, $Val extends ItemDetails>
    implements $ItemDetailsCopyWith<$Res> {
  _$ItemDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? title = null, Object? type = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ItemDetailsImplCopyWith<$Res>
    implements $ItemDetailsCopyWith<$Res> {
  factory _$$ItemDetailsImplCopyWith(
    _$ItemDetailsImpl value,
    $Res Function(_$ItemDetailsImpl) then,
  ) = __$$ItemDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String type});
}

/// @nodoc
class __$$ItemDetailsImplCopyWithImpl<$Res>
    extends _$ItemDetailsCopyWithImpl<$Res, _$ItemDetailsImpl>
    implements _$$ItemDetailsImplCopyWith<$Res> {
  __$$ItemDetailsImplCopyWithImpl(
    _$ItemDetailsImpl _value,
    $Res Function(_$ItemDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? title = null, Object? type = null}) {
    return _then(
      _$ItemDetailsImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemDetailsImpl implements _ItemDetails {
  const _$ItemDetailsImpl({this.id = '', this.title = '', this.type = ''});

  factory _$ItemDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemDetailsImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'ItemDetails(id: $id, title: $title, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, type);

  /// Create a copy of ItemDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemDetailsImplCopyWith<_$ItemDetailsImpl> get copyWith =>
      __$$ItemDetailsImplCopyWithImpl<_$ItemDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemDetailsImplToJson(this);
  }
}

abstract class _ItemDetails implements ItemDetails {
  const factory _ItemDetails({
    final String id,
    final String title,
    final String type,
  }) = _$ItemDetailsImpl;

  factory _ItemDetails.fromJson(Map<String, dynamic> json) =
      _$ItemDetailsImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get type;

  /// Create a copy of ItemDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemDetailsImplCopyWith<_$ItemDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RazorpayOrder _$RazorpayOrderFromJson(Map<String, dynamic> json) {
  return _RazorpayOrder.fromJson(json);
}

/// @nodoc
mixin _$RazorpayOrder {
  String get key => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get order_id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  RazorpayPrefill get prefill => throw _privateConstructorUsedError;
  RazorpayTheme get theme => throw _privateConstructorUsedError;
  RazorpayMethod get method => throw _privateConstructorUsedError;
  RazorpayRetry get retry => throw _privateConstructorUsedError;
  RazorpayNotes get notes => throw _privateConstructorUsedError;

  /// Serializes this RazorpayOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RazorpayOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RazorpayOrderCopyWith<RazorpayOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RazorpayOrderCopyWith<$Res> {
  factory $RazorpayOrderCopyWith(
    RazorpayOrder value,
    $Res Function(RazorpayOrder) then,
  ) = _$RazorpayOrderCopyWithImpl<$Res, RazorpayOrder>;
  @useResult
  $Res call({
    String key,
    int amount,
    String currency,
    String order_id,
    String name,
    String description,
    String image,
    RazorpayPrefill prefill,
    RazorpayTheme theme,
    RazorpayMethod method,
    RazorpayRetry retry,
    RazorpayNotes notes,
  });

  $RazorpayPrefillCopyWith<$Res> get prefill;
  $RazorpayThemeCopyWith<$Res> get theme;
  $RazorpayMethodCopyWith<$Res> get method;
  $RazorpayRetryCopyWith<$Res> get retry;
  $RazorpayNotesCopyWith<$Res> get notes;
}

/// @nodoc
class _$RazorpayOrderCopyWithImpl<$Res, $Val extends RazorpayOrder>
    implements $RazorpayOrderCopyWith<$Res> {
  _$RazorpayOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RazorpayOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? amount = null,
    Object? currency = null,
    Object? order_id = null,
    Object? name = null,
    Object? description = null,
    Object? image = null,
    Object? prefill = null,
    Object? theme = null,
    Object? method = null,
    Object? retry = null,
    Object? notes = null,
  }) {
    return _then(
      _value.copyWith(
            key: null == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as int,
            currency: null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String,
            order_id: null == order_id
                ? _value.order_id
                : order_id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            image: null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as String,
            prefill: null == prefill
                ? _value.prefill
                : prefill // ignore: cast_nullable_to_non_nullable
                      as RazorpayPrefill,
            theme: null == theme
                ? _value.theme
                : theme // ignore: cast_nullable_to_non_nullable
                      as RazorpayTheme,
            method: null == method
                ? _value.method
                : method // ignore: cast_nullable_to_non_nullable
                      as RazorpayMethod,
            retry: null == retry
                ? _value.retry
                : retry // ignore: cast_nullable_to_non_nullable
                      as RazorpayRetry,
            notes: null == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as RazorpayNotes,
          )
          as $Val,
    );
  }

  /// Create a copy of RazorpayOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RazorpayPrefillCopyWith<$Res> get prefill {
    return $RazorpayPrefillCopyWith<$Res>(_value.prefill, (value) {
      return _then(_value.copyWith(prefill: value) as $Val);
    });
  }

  /// Create a copy of RazorpayOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RazorpayThemeCopyWith<$Res> get theme {
    return $RazorpayThemeCopyWith<$Res>(_value.theme, (value) {
      return _then(_value.copyWith(theme: value) as $Val);
    });
  }

  /// Create a copy of RazorpayOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RazorpayMethodCopyWith<$Res> get method {
    return $RazorpayMethodCopyWith<$Res>(_value.method, (value) {
      return _then(_value.copyWith(method: value) as $Val);
    });
  }

  /// Create a copy of RazorpayOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RazorpayRetryCopyWith<$Res> get retry {
    return $RazorpayRetryCopyWith<$Res>(_value.retry, (value) {
      return _then(_value.copyWith(retry: value) as $Val);
    });
  }

  /// Create a copy of RazorpayOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RazorpayNotesCopyWith<$Res> get notes {
    return $RazorpayNotesCopyWith<$Res>(_value.notes, (value) {
      return _then(_value.copyWith(notes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RazorpayOrderImplCopyWith<$Res>
    implements $RazorpayOrderCopyWith<$Res> {
  factory _$$RazorpayOrderImplCopyWith(
    _$RazorpayOrderImpl value,
    $Res Function(_$RazorpayOrderImpl) then,
  ) = __$$RazorpayOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String key,
    int amount,
    String currency,
    String order_id,
    String name,
    String description,
    String image,
    RazorpayPrefill prefill,
    RazorpayTheme theme,
    RazorpayMethod method,
    RazorpayRetry retry,
    RazorpayNotes notes,
  });

  @override
  $RazorpayPrefillCopyWith<$Res> get prefill;
  @override
  $RazorpayThemeCopyWith<$Res> get theme;
  @override
  $RazorpayMethodCopyWith<$Res> get method;
  @override
  $RazorpayRetryCopyWith<$Res> get retry;
  @override
  $RazorpayNotesCopyWith<$Res> get notes;
}

/// @nodoc
class __$$RazorpayOrderImplCopyWithImpl<$Res>
    extends _$RazorpayOrderCopyWithImpl<$Res, _$RazorpayOrderImpl>
    implements _$$RazorpayOrderImplCopyWith<$Res> {
  __$$RazorpayOrderImplCopyWithImpl(
    _$RazorpayOrderImpl _value,
    $Res Function(_$RazorpayOrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RazorpayOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? amount = null,
    Object? currency = null,
    Object? order_id = null,
    Object? name = null,
    Object? description = null,
    Object? image = null,
    Object? prefill = null,
    Object? theme = null,
    Object? method = null,
    Object? retry = null,
    Object? notes = null,
  }) {
    return _then(
      _$RazorpayOrderImpl(
        key: null == key
            ? _value.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
        order_id: null == order_id
            ? _value.order_id
            : order_id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        image: null == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as String,
        prefill: null == prefill
            ? _value.prefill
            : prefill // ignore: cast_nullable_to_non_nullable
                  as RazorpayPrefill,
        theme: null == theme
            ? _value.theme
            : theme // ignore: cast_nullable_to_non_nullable
                  as RazorpayTheme,
        method: null == method
            ? _value.method
            : method // ignore: cast_nullable_to_non_nullable
                  as RazorpayMethod,
        retry: null == retry
            ? _value.retry
            : retry // ignore: cast_nullable_to_non_nullable
                  as RazorpayRetry,
        notes: null == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as RazorpayNotes,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RazorpayOrderImpl implements _RazorpayOrder {
  const _$RazorpayOrderImpl({
    this.key = '',
    this.amount = 0,
    this.currency = '',
    this.order_id = '',
    this.name = '',
    this.description = '',
    this.image = '',
    this.prefill = const RazorpayPrefill(),
    this.theme = const RazorpayTheme(),
    this.method = const RazorpayMethod(),
    this.retry = const RazorpayRetry(),
    this.notes = const RazorpayNotes(),
  });

  factory _$RazorpayOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$RazorpayOrderImplFromJson(json);

  @override
  @JsonKey()
  final String key;
  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey()
  final String order_id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final RazorpayPrefill prefill;
  @override
  @JsonKey()
  final RazorpayTheme theme;
  @override
  @JsonKey()
  final RazorpayMethod method;
  @override
  @JsonKey()
  final RazorpayRetry retry;
  @override
  @JsonKey()
  final RazorpayNotes notes;

  @override
  String toString() {
    return 'RazorpayOrder(key: $key, amount: $amount, currency: $currency, order_id: $order_id, name: $name, description: $description, image: $image, prefill: $prefill, theme: $theme, method: $method, retry: $retry, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RazorpayOrderImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.order_id, order_id) ||
                other.order_id == order_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.prefill, prefill) || other.prefill == prefill) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.retry, retry) || other.retry == retry) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    key,
    amount,
    currency,
    order_id,
    name,
    description,
    image,
    prefill,
    theme,
    method,
    retry,
    notes,
  );

  /// Create a copy of RazorpayOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RazorpayOrderImplCopyWith<_$RazorpayOrderImpl> get copyWith =>
      __$$RazorpayOrderImplCopyWithImpl<_$RazorpayOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RazorpayOrderImplToJson(this);
  }
}

abstract class _RazorpayOrder implements RazorpayOrder {
  const factory _RazorpayOrder({
    final String key,
    final int amount,
    final String currency,
    final String order_id,
    final String name,
    final String description,
    final String image,
    final RazorpayPrefill prefill,
    final RazorpayTheme theme,
    final RazorpayMethod method,
    final RazorpayRetry retry,
    final RazorpayNotes notes,
  }) = _$RazorpayOrderImpl;

  factory _RazorpayOrder.fromJson(Map<String, dynamic> json) =
      _$RazorpayOrderImpl.fromJson;

  @override
  String get key;
  @override
  int get amount;
  @override
  String get currency;
  @override
  String get order_id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get image;
  @override
  RazorpayPrefill get prefill;
  @override
  RazorpayTheme get theme;
  @override
  RazorpayMethod get method;
  @override
  RazorpayRetry get retry;
  @override
  RazorpayNotes get notes;

  /// Create a copy of RazorpayOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RazorpayOrderImplCopyWith<_$RazorpayOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RazorpayPrefill _$RazorpayPrefillFromJson(Map<String, dynamic> json) {
  return _RazorpayPrefill.fromJson(json);
}

/// @nodoc
mixin _$RazorpayPrefill {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get contact => throw _privateConstructorUsedError;

  /// Serializes this RazorpayPrefill to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RazorpayPrefill
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RazorpayPrefillCopyWith<RazorpayPrefill> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RazorpayPrefillCopyWith<$Res> {
  factory $RazorpayPrefillCopyWith(
    RazorpayPrefill value,
    $Res Function(RazorpayPrefill) then,
  ) = _$RazorpayPrefillCopyWithImpl<$Res, RazorpayPrefill>;
  @useResult
  $Res call({String name, String email, String contact});
}

/// @nodoc
class _$RazorpayPrefillCopyWithImpl<$Res, $Val extends RazorpayPrefill>
    implements $RazorpayPrefillCopyWith<$Res> {
  _$RazorpayPrefillCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RazorpayPrefill
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? contact = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            contact: null == contact
                ? _value.contact
                : contact // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RazorpayPrefillImplCopyWith<$Res>
    implements $RazorpayPrefillCopyWith<$Res> {
  factory _$$RazorpayPrefillImplCopyWith(
    _$RazorpayPrefillImpl value,
    $Res Function(_$RazorpayPrefillImpl) then,
  ) = __$$RazorpayPrefillImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String contact});
}

/// @nodoc
class __$$RazorpayPrefillImplCopyWithImpl<$Res>
    extends _$RazorpayPrefillCopyWithImpl<$Res, _$RazorpayPrefillImpl>
    implements _$$RazorpayPrefillImplCopyWith<$Res> {
  __$$RazorpayPrefillImplCopyWithImpl(
    _$RazorpayPrefillImpl _value,
    $Res Function(_$RazorpayPrefillImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RazorpayPrefill
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? contact = null,
  }) {
    return _then(
      _$RazorpayPrefillImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        contact: null == contact
            ? _value.contact
            : contact // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RazorpayPrefillImpl implements _RazorpayPrefill {
  const _$RazorpayPrefillImpl({
    this.name = '',
    this.email = '',
    this.contact = '',
  });

  factory _$RazorpayPrefillImpl.fromJson(Map<String, dynamic> json) =>
      _$$RazorpayPrefillImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String contact;

  @override
  String toString() {
    return 'RazorpayPrefill(name: $name, email: $email, contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RazorpayPrefillImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, contact);

  /// Create a copy of RazorpayPrefill
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RazorpayPrefillImplCopyWith<_$RazorpayPrefillImpl> get copyWith =>
      __$$RazorpayPrefillImplCopyWithImpl<_$RazorpayPrefillImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RazorpayPrefillImplToJson(this);
  }
}

abstract class _RazorpayPrefill implements RazorpayPrefill {
  const factory _RazorpayPrefill({
    final String name,
    final String email,
    final String contact,
  }) = _$RazorpayPrefillImpl;

  factory _RazorpayPrefill.fromJson(Map<String, dynamic> json) =
      _$RazorpayPrefillImpl.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get contact;

  /// Create a copy of RazorpayPrefill
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RazorpayPrefillImplCopyWith<_$RazorpayPrefillImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RazorpayTheme _$RazorpayThemeFromJson(Map<String, dynamic> json) {
  return _RazorpayTheme.fromJson(json);
}

/// @nodoc
mixin _$RazorpayTheme {
  String get color => throw _privateConstructorUsedError;

  /// Serializes this RazorpayTheme to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RazorpayTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RazorpayThemeCopyWith<RazorpayTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RazorpayThemeCopyWith<$Res> {
  factory $RazorpayThemeCopyWith(
    RazorpayTheme value,
    $Res Function(RazorpayTheme) then,
  ) = _$RazorpayThemeCopyWithImpl<$Res, RazorpayTheme>;
  @useResult
  $Res call({String color});
}

/// @nodoc
class _$RazorpayThemeCopyWithImpl<$Res, $Val extends RazorpayTheme>
    implements $RazorpayThemeCopyWith<$Res> {
  _$RazorpayThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RazorpayTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? color = null}) {
    return _then(
      _value.copyWith(
            color: null == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RazorpayThemeImplCopyWith<$Res>
    implements $RazorpayThemeCopyWith<$Res> {
  factory _$$RazorpayThemeImplCopyWith(
    _$RazorpayThemeImpl value,
    $Res Function(_$RazorpayThemeImpl) then,
  ) = __$$RazorpayThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String color});
}

/// @nodoc
class __$$RazorpayThemeImplCopyWithImpl<$Res>
    extends _$RazorpayThemeCopyWithImpl<$Res, _$RazorpayThemeImpl>
    implements _$$RazorpayThemeImplCopyWith<$Res> {
  __$$RazorpayThemeImplCopyWithImpl(
    _$RazorpayThemeImpl _value,
    $Res Function(_$RazorpayThemeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RazorpayTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? color = null}) {
    return _then(
      _$RazorpayThemeImpl(
        color: null == color
            ? _value.color
            : color // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RazorpayThemeImpl implements _RazorpayTheme {
  const _$RazorpayThemeImpl({this.color = ''});

  factory _$RazorpayThemeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RazorpayThemeImplFromJson(json);

  @override
  @JsonKey()
  final String color;

  @override
  String toString() {
    return 'RazorpayTheme(color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RazorpayThemeImpl &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, color);

  /// Create a copy of RazorpayTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RazorpayThemeImplCopyWith<_$RazorpayThemeImpl> get copyWith =>
      __$$RazorpayThemeImplCopyWithImpl<_$RazorpayThemeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RazorpayThemeImplToJson(this);
  }
}

abstract class _RazorpayTheme implements RazorpayTheme {
  const factory _RazorpayTheme({final String color}) = _$RazorpayThemeImpl;

  factory _RazorpayTheme.fromJson(Map<String, dynamic> json) =
      _$RazorpayThemeImpl.fromJson;

  @override
  String get color;

  /// Create a copy of RazorpayTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RazorpayThemeImplCopyWith<_$RazorpayThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RazorpayMethod _$RazorpayMethodFromJson(Map<String, dynamic> json) {
  return _RazorpayMethod.fromJson(json);
}

/// @nodoc
mixin _$RazorpayMethod {
  bool get card => throw _privateConstructorUsedError;
  bool get netbanking => throw _privateConstructorUsedError;
  bool get wallet => throw _privateConstructorUsedError;
  bool get upi => throw _privateConstructorUsedError;
  bool get paylater => throw _privateConstructorUsedError;

  /// Serializes this RazorpayMethod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RazorpayMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RazorpayMethodCopyWith<RazorpayMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RazorpayMethodCopyWith<$Res> {
  factory $RazorpayMethodCopyWith(
    RazorpayMethod value,
    $Res Function(RazorpayMethod) then,
  ) = _$RazorpayMethodCopyWithImpl<$Res, RazorpayMethod>;
  @useResult
  $Res call({bool card, bool netbanking, bool wallet, bool upi, bool paylater});
}

/// @nodoc
class _$RazorpayMethodCopyWithImpl<$Res, $Val extends RazorpayMethod>
    implements $RazorpayMethodCopyWith<$Res> {
  _$RazorpayMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RazorpayMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card = null,
    Object? netbanking = null,
    Object? wallet = null,
    Object? upi = null,
    Object? paylater = null,
  }) {
    return _then(
      _value.copyWith(
            card: null == card
                ? _value.card
                : card // ignore: cast_nullable_to_non_nullable
                      as bool,
            netbanking: null == netbanking
                ? _value.netbanking
                : netbanking // ignore: cast_nullable_to_non_nullable
                      as bool,
            wallet: null == wallet
                ? _value.wallet
                : wallet // ignore: cast_nullable_to_non_nullable
                      as bool,
            upi: null == upi
                ? _value.upi
                : upi // ignore: cast_nullable_to_non_nullable
                      as bool,
            paylater: null == paylater
                ? _value.paylater
                : paylater // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RazorpayMethodImplCopyWith<$Res>
    implements $RazorpayMethodCopyWith<$Res> {
  factory _$$RazorpayMethodImplCopyWith(
    _$RazorpayMethodImpl value,
    $Res Function(_$RazorpayMethodImpl) then,
  ) = __$$RazorpayMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool card, bool netbanking, bool wallet, bool upi, bool paylater});
}

/// @nodoc
class __$$RazorpayMethodImplCopyWithImpl<$Res>
    extends _$RazorpayMethodCopyWithImpl<$Res, _$RazorpayMethodImpl>
    implements _$$RazorpayMethodImplCopyWith<$Res> {
  __$$RazorpayMethodImplCopyWithImpl(
    _$RazorpayMethodImpl _value,
    $Res Function(_$RazorpayMethodImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RazorpayMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card = null,
    Object? netbanking = null,
    Object? wallet = null,
    Object? upi = null,
    Object? paylater = null,
  }) {
    return _then(
      _$RazorpayMethodImpl(
        card: null == card
            ? _value.card
            : card // ignore: cast_nullable_to_non_nullable
                  as bool,
        netbanking: null == netbanking
            ? _value.netbanking
            : netbanking // ignore: cast_nullable_to_non_nullable
                  as bool,
        wallet: null == wallet
            ? _value.wallet
            : wallet // ignore: cast_nullable_to_non_nullable
                  as bool,
        upi: null == upi
            ? _value.upi
            : upi // ignore: cast_nullable_to_non_nullable
                  as bool,
        paylater: null == paylater
            ? _value.paylater
            : paylater // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RazorpayMethodImpl implements _RazorpayMethod {
  const _$RazorpayMethodImpl({
    this.card = true,
    this.netbanking = true,
    this.wallet = true,
    this.upi = true,
    this.paylater = true,
  });

  factory _$RazorpayMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$RazorpayMethodImplFromJson(json);

  @override
  @JsonKey()
  final bool card;
  @override
  @JsonKey()
  final bool netbanking;
  @override
  @JsonKey()
  final bool wallet;
  @override
  @JsonKey()
  final bool upi;
  @override
  @JsonKey()
  final bool paylater;

  @override
  String toString() {
    return 'RazorpayMethod(card: $card, netbanking: $netbanking, wallet: $wallet, upi: $upi, paylater: $paylater)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RazorpayMethodImpl &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.netbanking, netbanking) ||
                other.netbanking == netbanking) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.upi, upi) || other.upi == upi) &&
            (identical(other.paylater, paylater) ||
                other.paylater == paylater));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, card, netbanking, wallet, upi, paylater);

  /// Create a copy of RazorpayMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RazorpayMethodImplCopyWith<_$RazorpayMethodImpl> get copyWith =>
      __$$RazorpayMethodImplCopyWithImpl<_$RazorpayMethodImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RazorpayMethodImplToJson(this);
  }
}

abstract class _RazorpayMethod implements RazorpayMethod {
  const factory _RazorpayMethod({
    final bool card,
    final bool netbanking,
    final bool wallet,
    final bool upi,
    final bool paylater,
  }) = _$RazorpayMethodImpl;

  factory _RazorpayMethod.fromJson(Map<String, dynamic> json) =
      _$RazorpayMethodImpl.fromJson;

  @override
  bool get card;
  @override
  bool get netbanking;
  @override
  bool get wallet;
  @override
  bool get upi;
  @override
  bool get paylater;

  /// Create a copy of RazorpayMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RazorpayMethodImplCopyWith<_$RazorpayMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RazorpayRetry _$RazorpayRetryFromJson(Map<String, dynamic> json) {
  return _RazorpayRetry.fromJson(json);
}

/// @nodoc
mixin _$RazorpayRetry {
  bool get enabled => throw _privateConstructorUsedError;
  int get max_count => throw _privateConstructorUsedError;

  /// Serializes this RazorpayRetry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RazorpayRetry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RazorpayRetryCopyWith<RazorpayRetry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RazorpayRetryCopyWith<$Res> {
  factory $RazorpayRetryCopyWith(
    RazorpayRetry value,
    $Res Function(RazorpayRetry) then,
  ) = _$RazorpayRetryCopyWithImpl<$Res, RazorpayRetry>;
  @useResult
  $Res call({bool enabled, int max_count});
}

/// @nodoc
class _$RazorpayRetryCopyWithImpl<$Res, $Val extends RazorpayRetry>
    implements $RazorpayRetryCopyWith<$Res> {
  _$RazorpayRetryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RazorpayRetry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? enabled = null, Object? max_count = null}) {
    return _then(
      _value.copyWith(
            enabled: null == enabled
                ? _value.enabled
                : enabled // ignore: cast_nullable_to_non_nullable
                      as bool,
            max_count: null == max_count
                ? _value.max_count
                : max_count // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RazorpayRetryImplCopyWith<$Res>
    implements $RazorpayRetryCopyWith<$Res> {
  factory _$$RazorpayRetryImplCopyWith(
    _$RazorpayRetryImpl value,
    $Res Function(_$RazorpayRetryImpl) then,
  ) = __$$RazorpayRetryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool enabled, int max_count});
}

/// @nodoc
class __$$RazorpayRetryImplCopyWithImpl<$Res>
    extends _$RazorpayRetryCopyWithImpl<$Res, _$RazorpayRetryImpl>
    implements _$$RazorpayRetryImplCopyWith<$Res> {
  __$$RazorpayRetryImplCopyWithImpl(
    _$RazorpayRetryImpl _value,
    $Res Function(_$RazorpayRetryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RazorpayRetry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? enabled = null, Object? max_count = null}) {
    return _then(
      _$RazorpayRetryImpl(
        enabled: null == enabled
            ? _value.enabled
            : enabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        max_count: null == max_count
            ? _value.max_count
            : max_count // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RazorpayRetryImpl implements _RazorpayRetry {
  const _$RazorpayRetryImpl({this.enabled = true, this.max_count = 0});

  factory _$RazorpayRetryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RazorpayRetryImplFromJson(json);

  @override
  @JsonKey()
  final bool enabled;
  @override
  @JsonKey()
  final int max_count;

  @override
  String toString() {
    return 'RazorpayRetry(enabled: $enabled, max_count: $max_count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RazorpayRetryImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.max_count, max_count) ||
                other.max_count == max_count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, enabled, max_count);

  /// Create a copy of RazorpayRetry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RazorpayRetryImplCopyWith<_$RazorpayRetryImpl> get copyWith =>
      __$$RazorpayRetryImplCopyWithImpl<_$RazorpayRetryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RazorpayRetryImplToJson(this);
  }
}

abstract class _RazorpayRetry implements RazorpayRetry {
  const factory _RazorpayRetry({final bool enabled, final int max_count}) =
      _$RazorpayRetryImpl;

  factory _RazorpayRetry.fromJson(Map<String, dynamic> json) =
      _$RazorpayRetryImpl.fromJson;

  @override
  bool get enabled;
  @override
  int get max_count;

  /// Create a copy of RazorpayRetry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RazorpayRetryImplCopyWith<_$RazorpayRetryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RazorpayNotes _$RazorpayNotesFromJson(Map<String, dynamic> json) {
  return _RazorpayNotes.fromJson(json);
}

/// @nodoc
mixin _$RazorpayNotes {
  String get order_type => throw _privateConstructorUsedError;
  String get created_by => throw _privateConstructorUsedError;

  /// Serializes this RazorpayNotes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RazorpayNotes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RazorpayNotesCopyWith<RazorpayNotes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RazorpayNotesCopyWith<$Res> {
  factory $RazorpayNotesCopyWith(
    RazorpayNotes value,
    $Res Function(RazorpayNotes) then,
  ) = _$RazorpayNotesCopyWithImpl<$Res, RazorpayNotes>;
  @useResult
  $Res call({String order_type, String created_by});
}

/// @nodoc
class _$RazorpayNotesCopyWithImpl<$Res, $Val extends RazorpayNotes>
    implements $RazorpayNotesCopyWith<$Res> {
  _$RazorpayNotesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RazorpayNotes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? order_type = null, Object? created_by = null}) {
    return _then(
      _value.copyWith(
            order_type: null == order_type
                ? _value.order_type
                : order_type // ignore: cast_nullable_to_non_nullable
                      as String,
            created_by: null == created_by
                ? _value.created_by
                : created_by // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RazorpayNotesImplCopyWith<$Res>
    implements $RazorpayNotesCopyWith<$Res> {
  factory _$$RazorpayNotesImplCopyWith(
    _$RazorpayNotesImpl value,
    $Res Function(_$RazorpayNotesImpl) then,
  ) = __$$RazorpayNotesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String order_type, String created_by});
}

/// @nodoc
class __$$RazorpayNotesImplCopyWithImpl<$Res>
    extends _$RazorpayNotesCopyWithImpl<$Res, _$RazorpayNotesImpl>
    implements _$$RazorpayNotesImplCopyWith<$Res> {
  __$$RazorpayNotesImplCopyWithImpl(
    _$RazorpayNotesImpl _value,
    $Res Function(_$RazorpayNotesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RazorpayNotes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? order_type = null, Object? created_by = null}) {
    return _then(
      _$RazorpayNotesImpl(
        order_type: null == order_type
            ? _value.order_type
            : order_type // ignore: cast_nullable_to_non_nullable
                  as String,
        created_by: null == created_by
            ? _value.created_by
            : created_by // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RazorpayNotesImpl implements _RazorpayNotes {
  const _$RazorpayNotesImpl({this.order_type = '', this.created_by = ''});

  factory _$RazorpayNotesImpl.fromJson(Map<String, dynamic> json) =>
      _$$RazorpayNotesImplFromJson(json);

  @override
  @JsonKey()
  final String order_type;
  @override
  @JsonKey()
  final String created_by;

  @override
  String toString() {
    return 'RazorpayNotes(order_type: $order_type, created_by: $created_by)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RazorpayNotesImpl &&
            (identical(other.order_type, order_type) ||
                other.order_type == order_type) &&
            (identical(other.created_by, created_by) ||
                other.created_by == created_by));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, order_type, created_by);

  /// Create a copy of RazorpayNotes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RazorpayNotesImplCopyWith<_$RazorpayNotesImpl> get copyWith =>
      __$$RazorpayNotesImplCopyWithImpl<_$RazorpayNotesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RazorpayNotesImplToJson(this);
  }
}

abstract class _RazorpayNotes implements RazorpayNotes {
  const factory _RazorpayNotes({
    final String order_type,
    final String created_by,
  }) = _$RazorpayNotesImpl;

  factory _RazorpayNotes.fromJson(Map<String, dynamic> json) =
      _$RazorpayNotesImpl.fromJson;

  @override
  String get order_type;
  @override
  String get created_by;

  /// Create a copy of RazorpayNotes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RazorpayNotesImplCopyWith<_$RazorpayNotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PricingInfo _$PricingInfoFromJson(Map<String, dynamic> json) {
  return _PricingInfo.fromJson(json);
}

/// @nodoc
mixin _$PricingInfo {
  String get source => throw _privateConstructorUsedError;
  String? get billingCycle => throw _privateConstructorUsedError;
  bool get useCustomAmount => throw _privateConstructorUsedError;

  /// Serializes this PricingInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PricingInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PricingInfoCopyWith<PricingInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingInfoCopyWith<$Res> {
  factory $PricingInfoCopyWith(
    PricingInfo value,
    $Res Function(PricingInfo) then,
  ) = _$PricingInfoCopyWithImpl<$Res, PricingInfo>;
  @useResult
  $Res call({String source, String? billingCycle, bool useCustomAmount});
}

/// @nodoc
class _$PricingInfoCopyWithImpl<$Res, $Val extends PricingInfo>
    implements $PricingInfoCopyWith<$Res> {
  _$PricingInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PricingInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? billingCycle = freezed,
    Object? useCustomAmount = null,
  }) {
    return _then(
      _value.copyWith(
            source: null == source
                ? _value.source
                : source // ignore: cast_nullable_to_non_nullable
                      as String,
            billingCycle: freezed == billingCycle
                ? _value.billingCycle
                : billingCycle // ignore: cast_nullable_to_non_nullable
                      as String?,
            useCustomAmount: null == useCustomAmount
                ? _value.useCustomAmount
                : useCustomAmount // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PricingInfoImplCopyWith<$Res>
    implements $PricingInfoCopyWith<$Res> {
  factory _$$PricingInfoImplCopyWith(
    _$PricingInfoImpl value,
    $Res Function(_$PricingInfoImpl) then,
  ) = __$$PricingInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String source, String? billingCycle, bool useCustomAmount});
}

/// @nodoc
class __$$PricingInfoImplCopyWithImpl<$Res>
    extends _$PricingInfoCopyWithImpl<$Res, _$PricingInfoImpl>
    implements _$$PricingInfoImplCopyWith<$Res> {
  __$$PricingInfoImplCopyWithImpl(
    _$PricingInfoImpl _value,
    $Res Function(_$PricingInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PricingInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? billingCycle = freezed,
    Object? useCustomAmount = null,
  }) {
    return _then(
      _$PricingInfoImpl(
        source: null == source
            ? _value.source
            : source // ignore: cast_nullable_to_non_nullable
                  as String,
        billingCycle: freezed == billingCycle
            ? _value.billingCycle
            : billingCycle // ignore: cast_nullable_to_non_nullable
                  as String?,
        useCustomAmount: null == useCustomAmount
            ? _value.useCustomAmount
            : useCustomAmount // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PricingInfoImpl implements _PricingInfo {
  const _$PricingInfoImpl({
    this.source = '',
    this.billingCycle,
    this.useCustomAmount = false,
  });

  factory _$PricingInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricingInfoImplFromJson(json);

  @override
  @JsonKey()
  final String source;
  @override
  final String? billingCycle;
  @override
  @JsonKey()
  final bool useCustomAmount;

  @override
  String toString() {
    return 'PricingInfo(source: $source, billingCycle: $billingCycle, useCustomAmount: $useCustomAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricingInfoImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.billingCycle, billingCycle) ||
                other.billingCycle == billingCycle) &&
            (identical(other.useCustomAmount, useCustomAmount) ||
                other.useCustomAmount == useCustomAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, source, billingCycle, useCustomAmount);

  /// Create a copy of PricingInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PricingInfoImplCopyWith<_$PricingInfoImpl> get copyWith =>
      __$$PricingInfoImplCopyWithImpl<_$PricingInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PricingInfoImplToJson(this);
  }
}

abstract class _PricingInfo implements PricingInfo {
  const factory _PricingInfo({
    final String source,
    final String? billingCycle,
    final bool useCustomAmount,
  }) = _$PricingInfoImpl;

  factory _PricingInfo.fromJson(Map<String, dynamic> json) =
      _$PricingInfoImpl.fromJson;

  @override
  String get source;
  @override
  String? get billingCycle;
  @override
  bool get useCustomAmount;

  /// Create a copy of PricingInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PricingInfoImplCopyWith<_$PricingInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderMetadata _$OrderMetadataFromJson(Map<String, dynamic> json) {
  return _OrderMetadata.fromJson(json);
}

/// @nodoc
mixin _$OrderMetadata {
  String get itemType => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  PricingInfo get pricingInfo => throw _privateConstructorUsedError;

  /// Serializes this OrderMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderMetadataCopyWith<OrderMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderMetadataCopyWith<$Res> {
  factory $OrderMetadataCopyWith(
    OrderMetadata value,
    $Res Function(OrderMetadata) then,
  ) = _$OrderMetadataCopyWithImpl<$Res, OrderMetadata>;
  @useResult
  $Res call({
    String itemType,
    String itemName,
    int amount,
    String currency,
    PricingInfo pricingInfo,
  });

  $PricingInfoCopyWith<$Res> get pricingInfo;
}

/// @nodoc
class _$OrderMetadataCopyWithImpl<$Res, $Val extends OrderMetadata>
    implements $OrderMetadataCopyWith<$Res> {
  _$OrderMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemType = null,
    Object? itemName = null,
    Object? amount = null,
    Object? currency = null,
    Object? pricingInfo = null,
  }) {
    return _then(
      _value.copyWith(
            itemType: null == itemType
                ? _value.itemType
                : itemType // ignore: cast_nullable_to_non_nullable
                      as String,
            itemName: null == itemName
                ? _value.itemName
                : itemName // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as int,
            currency: null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String,
            pricingInfo: null == pricingInfo
                ? _value.pricingInfo
                : pricingInfo // ignore: cast_nullable_to_non_nullable
                      as PricingInfo,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PricingInfoCopyWith<$Res> get pricingInfo {
    return $PricingInfoCopyWith<$Res>(_value.pricingInfo, (value) {
      return _then(_value.copyWith(pricingInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderMetadataImplCopyWith<$Res>
    implements $OrderMetadataCopyWith<$Res> {
  factory _$$OrderMetadataImplCopyWith(
    _$OrderMetadataImpl value,
    $Res Function(_$OrderMetadataImpl) then,
  ) = __$$OrderMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String itemType,
    String itemName,
    int amount,
    String currency,
    PricingInfo pricingInfo,
  });

  @override
  $PricingInfoCopyWith<$Res> get pricingInfo;
}

/// @nodoc
class __$$OrderMetadataImplCopyWithImpl<$Res>
    extends _$OrderMetadataCopyWithImpl<$Res, _$OrderMetadataImpl>
    implements _$$OrderMetadataImplCopyWith<$Res> {
  __$$OrderMetadataImplCopyWithImpl(
    _$OrderMetadataImpl _value,
    $Res Function(_$OrderMetadataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemType = null,
    Object? itemName = null,
    Object? amount = null,
    Object? currency = null,
    Object? pricingInfo = null,
  }) {
    return _then(
      _$OrderMetadataImpl(
        itemType: null == itemType
            ? _value.itemType
            : itemType // ignore: cast_nullable_to_non_nullable
                  as String,
        itemName: null == itemName
            ? _value.itemName
            : itemName // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
        pricingInfo: null == pricingInfo
            ? _value.pricingInfo
            : pricingInfo // ignore: cast_nullable_to_non_nullable
                  as PricingInfo,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderMetadataImpl implements _OrderMetadata {
  const _$OrderMetadataImpl({
    this.itemType = '',
    this.itemName = '',
    this.amount = 0,
    this.currency = '',
    this.pricingInfo = const PricingInfo(),
  });

  factory _$OrderMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderMetadataImplFromJson(json);

  @override
  @JsonKey()
  final String itemType;
  @override
  @JsonKey()
  final String itemName;
  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey()
  final PricingInfo pricingInfo;

  @override
  String toString() {
    return 'OrderMetadata(itemType: $itemType, itemName: $itemName, amount: $amount, currency: $currency, pricingInfo: $pricingInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderMetadataImpl &&
            (identical(other.itemType, itemType) ||
                other.itemType == itemType) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.pricingInfo, pricingInfo) ||
                other.pricingInfo == pricingInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    itemType,
    itemName,
    amount,
    currency,
    pricingInfo,
  );

  /// Create a copy of OrderMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderMetadataImplCopyWith<_$OrderMetadataImpl> get copyWith =>
      __$$OrderMetadataImplCopyWithImpl<_$OrderMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderMetadataImplToJson(this);
  }
}

abstract class _OrderMetadata implements OrderMetadata {
  const factory _OrderMetadata({
    final String itemType,
    final String itemName,
    final int amount,
    final String currency,
    final PricingInfo pricingInfo,
  }) = _$OrderMetadataImpl;

  factory _OrderMetadata.fromJson(Map<String, dynamic> json) =
      _$OrderMetadataImpl.fromJson;

  @override
  String get itemType;
  @override
  String get itemName;
  @override
  int get amount;
  @override
  String get currency;
  @override
  PricingInfo get pricingInfo;

  /// Create a copy of OrderMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderMetadataImplCopyWith<_$OrderMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
