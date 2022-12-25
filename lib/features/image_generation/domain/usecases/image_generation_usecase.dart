

import 'package:flutter_chatgpt/features/image_generation/data/model/image_generation_model.dart';
import 'package:flutter_chatgpt/features/image_generation/domain/repositories/image_generation_repository.dart';

class ImageGenerationUseCase{
  final ImageGenerationRepository repository;

  ImageGenerationUseCase({required this.repository});


  Future<ImageGenerationModel> call(String query)async{
    return repository.getGenerateImages(query);
  }
}