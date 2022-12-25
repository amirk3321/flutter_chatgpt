

import 'package:flutter_chatgpt/features/image_generation/data/model/image_generation_data.dart';

class ImageGenerationModel {
  final num created;
  final List<ImageGenerationData> data;

  ImageGenerationModel({required this.created, required this.data});

  factory ImageGenerationModel.fromJson(Map<String, dynamic> json) {
    final imageGenerationItems = json['data'] as List;
    List<ImageGenerationData> imagesData = imageGenerationItems
        .map((singleItem) => ImageGenerationData.fromJson(singleItem))
        .toList();

    return ImageGenerationModel(
      data: imagesData,
      created: json['created'],
    );
  }
}