
import 'package:flutter_chatgpt/features/image_generation/data/model/image_generation_model.dart';

abstract class ImageGenerationRepository {


  Future<ImageGenerationModel> getGenerateImages(String query);
}