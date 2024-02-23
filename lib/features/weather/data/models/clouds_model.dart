class CloudsModel {
  final int all;

  CloudsModel({required this.all});

  factory CloudsModel.fromJson(Map<String, dynamic> json) => CloudsModel(all: json["all"]);

  Map<String, dynamic> toJson() => {"all": all};
}
