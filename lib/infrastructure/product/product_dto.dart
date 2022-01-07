import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
abstract class ProductDto with _$ProductDto {
  const factory ProductDto({
    @required int? id,
    @required String? name,
    @required String? slug,
    @required String? postAuthor,
    @required String? permalink,
    @required DateTime? dateCreated,
    @required DateTime? dateCreatedGmt,
    @required DateTime? dateModified,
    @required DateTime? dateModifiedGmt,
    @required String? type,
    @required String? status,
    @required bool? featured,
    @required String? catalogVisibility,
    @required String? description,
    @required String? shortDescription,
    @required String? sku,
    @required String? price,
    @required String? regularPrice,
    @required String? salePrice,
    @required dynamic dateOnSaleFrom,
    @required dynamic dateOnSaleFromGmt,
    @required dynamic dateOnSaleTo,
    @required dynamic dateOnSaleToGmt,
    @required String? priceHtml,
    @required bool? onSale,
    @required bool? purchasable,
    @required int? totalSales,
    @required bool? virtual,
    @required bool? downloadable,
    @required List<Download>? downloads,
    @required int? downloadLimit,
    @required int? downloadExpiry,
    @required String? externalUrl,
    @required String? buttonText,
    @required String? taxStatus,
    @required String? taxClass,
    @required bool? manageStock,
    @required dynamic stockQuantity,
    @required String? lowStockAmount,
    @required bool? inStock,
    @required String? backorders,
    @required bool? backordersAllowed,
    @required bool? backordered,
    @required bool? soldIndividually,
    @required String? weight,
    @required Dimensions? dimensions,
    @required bool? shippingRequired,
    @required bool? shippingTaxable,
    @required String? shippingClass,
    @required int? shippingClassId,
    @required bool? reviewsAllowed,
    @required String? averageRating,
    @required int? ratingCount,
    @required List<int>? relatedIds,
    @required List<dynamic>? upsellIds,
    @required List<dynamic>? crossSellIds,
    @required int? parentId,
    @required String? purchaseNote,
    @required List<Category>? categories,
    @required List<dynamic>? tags,
    @required List<Image>? images,
    @required List<dynamic>? attributes,
    @required List<dynamic>? defaultAttributes,
    @required List<dynamic>? variations,
    @required List<dynamic>? groupedProducts,
    @required int? menuOrder,
    @required List<MetaDatum>? metaData,
    @required Store? store,
    @required Links? links,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) => _$ProductDtoFromJson(json);
}

@freezed
abstract class Category with _$Category {
  const factory Category({
    @required int? id,
    @required String? name,
    @required String? slug,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
abstract class Dimensions with _$Dimensions {
  const factory Dimensions({
    @required String? length,
    @required String? width,
    @required String? height,
  }) = _Dimensions;

  factory Dimensions.fromJson(Map<String, dynamic> json) => _$DimensionsFromJson(json);
}

@freezed
abstract class Download with _$Download {
  const factory Download({
    @required String? id,
    @required String? name,
    @required String? file,
  }) = _Download;

  factory Download.fromJson(Map<String, dynamic> json) => _$DownloadFromJson(json);
}

@freezed
abstract class Image with _$Image {
  const factory Image({
    @required int? id,
    @required DateTime? dateCreated,
    @required DateTime? dateCreatedGmt,
    @required DateTime? dateModified,
    @required DateTime? dateModifiedGmt,
    @required String? src,
    @required String? name,
    @required String? alt,
    @required int? position,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
abstract class Links with _$Links {
  const factory Links({
    @required List<Collection>? self,
    @required List<Collection>? collection,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

@freezed
abstract class Collection with _$Collection {
  const factory Collection({
    @required String? href,
  }) = _Collection;

  factory Collection.fromJson(Map<String, dynamic> json) => _$CollectionFromJson(json);
}

@freezed
abstract class MetaDatum with _$MetaDatum {
  const factory MetaDatum({
    @required int? id,
    @required String? key,
    @required dynamic value,
  }) = _MetaDatum;

  factory MetaDatum.fromJson(Map<String, dynamic> json) => _$MetaDatumFromJson(json);
}

@freezed
abstract class Store with _$Store {
  const factory Store({
    @required int? id,
    @required String? name,
    @required String? url,
    @required String? avatar,
    @required Address? address,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}

@freezed
abstract class Address with _$Address {
  const factory Address({
    @required String? street1,
    @required String? street2,
    @required String? city,
    @required String? zip,
    @required String? country,
    @required String? state,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}
