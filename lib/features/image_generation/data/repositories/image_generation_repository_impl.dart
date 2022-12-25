

import 'package:flutter_chatgpt/features/image_generation/data/model/image_generation_model.dart';
import 'package:flutter_chatgpt/features/image_generation/data/remote_data_source/image_generation_remote_data_source.dart';
import 'package:flutter_chatgpt/features/image_generation/domain/repositories/image_generation_repository.dart';

class ImageGenerationRepositoryImpl implements ImageGenerationRepository {
  final ImageGenerationRemoteDataSource remoteDataSource;

  ImageGenerationRepositoryImpl({required this.remoteDataSource});

  @override
  Future<ImageGenerationModel> getGenerateImages(String query) async =>
      remoteDataSource.getGenerateImages(query);
}
