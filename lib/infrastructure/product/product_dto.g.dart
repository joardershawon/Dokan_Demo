// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDto _$$_ProductDtoFromJson(Map<String, dynamic> json) =>
    _$_ProductDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      postAuthor: json['postAuthor'] as String?,
      permalink: json['permalink'] as String?,
      dateCreated: json['dateCreated'] == null
          ? null
          : DateTime.parse(json['dateCreated'] as String),
      dateCreatedGmt: json['dateCreatedGmt'] == null
          ? null
          : DateTime.parse(json['dateCreatedGmt'] as String),
      dateModified: json['dateModified'] == null
          ? null
          : DateTime.parse(json['dateModified'] as String),
      dateModifiedGmt: json['dateModifiedGmt'] == null
          ? null
          : DateTime.parse(json['dateModifiedGmt'] as String),
      type: json['type'] as String?,
      status: json['status'] as String?,
      featured: json['featured'] as bool?,
      catalogVisibility: json['catalogVisibility'] as String?,
      description: json['description'] as String?,
      shortDescription: json['shortDescription'] as String?,
      sku: json['sku'] as String?,
      price: json['price'] as String?,
      regularPrice: json['regularPrice'] as String?,
      salePrice: json['salePrice'] as String?,
      dateOnSaleFrom: json['dateOnSaleFrom'],
      dateOnSaleFromGmt: json['dateOnSaleFromGmt'],
      dateOnSaleTo: json['dateOnSaleTo'],
      dateOnSaleToGmt: json['dateOnSaleToGmt'],
      priceHtml: json['priceHtml'] as String?,
      onSale: json['onSale'] as bool?,
      purchasable: json['purchasable'] as bool?,
      totalSales: json['totalSales'] as int?,
      virtual: json['virtual'] as bool?,
      downloadable: json['downloadable'] as bool?,
      downloads: (json['downloads'] as List<dynamic>?)
          ?.map((e) => Download.fromJson(e as Map<String, dynamic>))
          .toList(),
      downloadLimit: json['downloadLimit'] as int?,
      downloadExpiry: json['downloadExpiry'] as int?,
      externalUrl: json['externalUrl'] as String?,
      buttonText: json['buttonText'] as String?,
      taxStatus: json['taxStatus'] as String?,
      taxClass: json['taxClass'] as String?,
      manageStock: json['manageStock'] as bool?,
      stockQuantity: json['stockQuantity'],
      lowStockAmount: json['lowStockAmount'] as String?,
      inStock: json['inStock'] as bool?,
      backorders: json['backorders'] as String?,
      backordersAllowed: json['backordersAllowed'] as bool?,
      backordered: json['backordered'] as bool?,
      soldIndividually: json['soldIndividually'] as bool?,
      weight: json['weight'] as String?,
      dimensions: json['dimensions'] == null
          ? null
          : Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
      shippingRequired: json['shippingRequired'] as bool?,
      shippingTaxable: json['shippingTaxable'] as bool?,
      shippingClass: json['shippingClass'] as String?,
      shippingClassId: json['shippingClassId'] as int?,
      reviewsAllowed: json['reviewsAllowed'] as bool?,
      averageRating: json['averageRating'] as String?,
      ratingCount: json['ratingCount'] as int?,
      relatedIds:
          (json['relatedIds'] as List<dynamic>?)?.map((e) => e as int).toList(),
      upsellIds: json['upsellIds'] as List<dynamic>?,
      crossSellIds: json['crossSellIds'] as List<dynamic>?,
      parentId: json['parentId'] as int?,
      purchaseNote: json['purchaseNote'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: json['tags'] as List<dynamic>?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      attributes: json['attributes'] as List<dynamic>?,
      defaultAttributes: json['defaultAttributes'] as List<dynamic>?,
      variations: json['variations'] as List<dynamic>?,
      groupedProducts: json['groupedProducts'] as List<dynamic>?,
      menuOrder: json['menuOrder'] as int?,
      metaData: (json['metaData'] as List<dynamic>?)
          ?.map((e) => MetaDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      store: json['store'] == null
          ? null
          : Store.fromJson(json['store'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductDtoToJson(_$_ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'postAuthor': instance.postAuthor,
      'permalink': instance.permalink,
      'dateCreated': instance.dateCreated?.toIso8601String(),
      'dateCreatedGmt': instance.dateCreatedGmt?.toIso8601String(),
      'dateModified': instance.dateModified?.toIso8601String(),
      'dateModifiedGmt': instance.dateModifiedGmt?.toIso8601String(),
      'type': instance.type,
      'status': instance.status,
      'featured': instance.featured,
      'catalogVisibility': instance.catalogVisibility,
      'description': instance.description,
      'shortDescription': instance.shortDescription,
      'sku': instance.sku,
      'price': instance.price,
      'regularPrice': instance.regularPrice,
      'salePrice': instance.salePrice,
      'dateOnSaleFrom': instance.dateOnSaleFrom,
      'dateOnSaleFromGmt': instance.dateOnSaleFromGmt,
      'dateOnSaleTo': instance.dateOnSaleTo,
      'dateOnSaleToGmt': instance.dateOnSaleToGmt,
      'priceHtml': instance.priceHtml,
      'onSale': instance.onSale,
      'purchasable': instance.purchasable,
      'totalSales': instance.totalSales,
      'virtual': instance.virtual,
      'downloadable': instance.downloadable,
      'downloads': instance.downloads,
      'downloadLimit': instance.downloadLimit,
      'downloadExpiry': instance.downloadExpiry,
      'externalUrl': instance.externalUrl,
      'buttonText': instance.buttonText,
      'taxStatus': instance.taxStatus,
      'taxClass': instance.taxClass,
      'manageStock': instance.manageStock,
      'stockQuantity': instance.stockQuantity,
      'lowStockAmount': instance.lowStockAmount,
      'inStock': instance.inStock,
      'backorders': instance.backorders,
      'backordersAllowed': instance.backordersAllowed,
      'backordered': instance.backordered,
      'soldIndividually': instance.soldIndividually,
      'weight': instance.weight,
      'dimensions': instance.dimensions,
      'shippingRequired': instance.shippingRequired,
      'shippingTaxable': instance.shippingTaxable,
      'shippingClass': instance.shippingClass,
      'shippingClassId': instance.shippingClassId,
      'reviewsAllowed': instance.reviewsAllowed,
      'averageRating': instance.averageRating,
      'ratingCount': instance.ratingCount,
      'relatedIds': instance.relatedIds,
      'upsellIds': instance.upsellIds,
      'crossSellIds': instance.crossSellIds,
      'parentId': instance.parentId,
      'purchaseNote': instance.purchaseNote,
      'categories': instance.categories,
      'tags': instance.tags,
      'images': instance.images,
      'attributes': instance.attributes,
      'defaultAttributes': instance.defaultAttributes,
      'variations': instance.variations,
      'groupedProducts': instance.groupedProducts,
      'menuOrder': instance.menuOrder,
      'metaData': instance.metaData,
      'store': instance.store,
      'links': instance.links,
    };

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

_$_Dimensions _$$_DimensionsFromJson(Map<String, dynamic> json) =>
    _$_Dimensions(
      length: json['length'] as String?,
      width: json['width'] as String?,
      height: json['height'] as String?,
    );

Map<String, dynamic> _$$_DimensionsToJson(_$_Dimensions instance) =>
    <String, dynamic>{
      'length': instance.length,
      'width': instance.width,
      'height': instance.height,
    };

_$_Download _$$_DownloadFromJson(Map<String, dynamic> json) => _$_Download(
      id: json['id'] as String?,
      name: json['name'] as String?,
      file: json['file'] as String?,
    );

Map<String, dynamic> _$$_DownloadToJson(_$_Download instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'file': instance.file,
    };

_$_Image _$$_ImageFromJson(Map<String, dynamic> json) => _$_Image(
      id: json['id'] as int?,
      dateCreated: json['dateCreated'] == null
          ? null
          : DateTime.parse(json['dateCreated'] as String),
      dateCreatedGmt: json['dateCreatedGmt'] == null
          ? null
          : DateTime.parse(json['dateCreatedGmt'] as String),
      dateModified: json['dateModified'] == null
          ? null
          : DateTime.parse(json['dateModified'] as String),
      dateModifiedGmt: json['dateModifiedGmt'] == null
          ? null
          : DateTime.parse(json['dateModifiedGmt'] as String),
      src: json['src'] as String?,
      name: json['name'] as String?,
      alt: json['alt'] as String?,
      position: json['position'] as int?,
    );

Map<String, dynamic> _$$_ImageToJson(_$_Image instance) => <String, dynamic>{
      'id': instance.id,
      'dateCreated': instance.dateCreated?.toIso8601String(),
      'dateCreatedGmt': instance.dateCreatedGmt?.toIso8601String(),
      'dateModified': instance.dateModified?.toIso8601String(),
      'dateModifiedGmt': instance.dateModifiedGmt?.toIso8601String(),
      'src': instance.src,
      'name': instance.name,
      'alt': instance.alt,
      'position': instance.position,
    };

_$_Links _$$_LinksFromJson(Map<String, dynamic> json) => _$_Links(
      self: (json['self'] as List<dynamic>?)
          ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LinksToJson(_$_Links instance) => <String, dynamic>{
      'self': instance.self,
      'collection': instance.collection,
    };

_$_Collection _$$_CollectionFromJson(Map<String, dynamic> json) =>
    _$_Collection(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$$_CollectionToJson(_$_Collection instance) =>
    <String, dynamic>{
      'href': instance.href,
    };

_$_MetaDatum _$$_MetaDatumFromJson(Map<String, dynamic> json) => _$_MetaDatum(
      id: json['id'] as int?,
      key: json['key'] as String?,
      value: json['value'],
    );

Map<String, dynamic> _$$_MetaDatumToJson(_$_MetaDatum instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };

_$_Store _$$_StoreFromJson(Map<String, dynamic> json) => _$_Store(
      id: json['id'] as int?,
      name: json['name'] as String?,
      url: json['url'] as String?,
      avatar: json['avatar'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StoreToJson(_$_Store instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'avatar': instance.avatar,
      'address': instance.address,
    };

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      street1: json['street1'] as String?,
      street2: json['street2'] as String?,
      city: json['city'] as String?,
      zip: json['zip'] as String?,
      country: json['country'] as String?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'street1': instance.street1,
      'street2': instance.street2,
      'city': instance.city,
      'zip': instance.zip,
      'country': instance.country,
      'state': instance.state,
    };
