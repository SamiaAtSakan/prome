class ShowMarketModel {
  int? apiStatus;
  List<Products>? products;

  ShowMarketModel({this.apiStatus, this.products});

  ShowMarketModel.fromJson(Map<String, dynamic> json) {
    apiStatus = json['api_status'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_status'] = this.apiStatus;
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  String? id;
  String? userId;
  String? pageId;
  String? name;
  String? description;
  String? category;
  String? subCategory;
  String? price;
  String? location;
  String? status;
  String? type;
  String? currency;
  String? lng;
  String? lat;
  String? units;
  String? time;
  String? active;
  String? timeText;
  String? postId;
  String? editDescription;
  String? url;
  String? reviewsUrl;
  String? seoId;
  String? reviewsSeoId;
  String? productSubCategory;
  List<Null>? fields;
  int? addedToCart;
  var rating;
  int? reviewsCount;
  String? priceFormat;

  Products({
    this.id,
    this.userId,
    this.pageId,
    this.name,
    this.description,
    this.category,
    this.subCategory,
    this.price,
    this.location,
    this.status,
    this.type,
    this.currency,
    this.lng,
    this.lat,
    this.units,
    this.time,
    this.active,
    this.timeText,
    this.postId,
    this.editDescription,
    this.url,
    this.reviewsUrl,
    this.seoId,
    this.reviewsSeoId,
    this.productSubCategory,
    this.fields,
    this.addedToCart,
    this.rating,
    this.reviewsCount,
    this.priceFormat,
  });

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    pageId = json['page_id'];
    name = json['name'];
    description = json['description'];
    category = json['category'];
    subCategory = json['sub_category'];
    price = json['price'];
    location = json['location'];
    status = json['status'];
    type = json['type'];
    currency = json['currency'];
    lng = json['lng'];
    lat = json['lat'];
    units = json['units'];
    time = json['time'];
    active = json['active'];

    timeText = json['time_text'];
    postId = json['post_id'];
    editDescription = json['edit_description'];
    url = json['url'];
    reviewsUrl = json['reviews_url'];
    seoId = json['seo_id'];
    reviewsSeoId = json['reviews_seo_id'];
    productSubCategory = json['product_sub_category'];

    addedToCart = json['added_to_cart'];

    rating = json['rating'];
    reviewsCount = json['reviews_count'];
    priceFormat = json['price_format'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['page_id'] = this.pageId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['category'] = this.category;
    data['sub_category'] = this.subCategory;
    data['price'] = this.price;
    data['location'] = this.location;
    data['status'] = this.status;
    data['type'] = this.type;
    data['currency'] = this.currency;
    data['lng'] = this.lng;
    data['lat'] = this.lat;
    data['units'] = this.units;
    data['time'] = this.time;
    data['active'] = this.active;

    data['time_text'] = this.timeText;
    data['post_id'] = this.postId;
    data['edit_description'] = this.editDescription;
    data['url'] = this.url;
    data['reviews_url'] = this.reviewsUrl;
    data['seo_id'] = this.seoId;
    data['reviews_seo_id'] = this.reviewsSeoId;
    data['product_sub_category'] = this.productSubCategory;

    data['added_to_cart'] = this.addedToCart;

    data['rating'] = this.rating;
    data['reviews_count'] = this.reviewsCount;
    data['price_format'] = this.priceFormat;

    return data;
  }
}
