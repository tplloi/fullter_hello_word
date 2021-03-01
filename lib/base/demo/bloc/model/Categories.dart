class Categories {
  final List<String> categories;

  Categories({
    this.categories,
  });

  factory Categories.fromJson(List<dynamic> json) {
    return Categories(
      categories: json != null ? new List<String>.from(json) : null,
    );
  }

  List<dynamic> toJson() {
    List<dynamic> data = new List<String>();
    if (this.categories != null) {
      data = this.categories;
    }
    return data;
  }
}
