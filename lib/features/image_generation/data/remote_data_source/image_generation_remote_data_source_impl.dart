

import 'dart:convert';

import 'package:flutter_chatgpt/core/custom_exceptions.dart';
import 'package:flutter_chatgpt/core/open_ai_data.dart';
import 'package:flutter_chatgpt/features/global/provider/provider.dart';
import 'package:flutter_chatgpt/features/image_generation/data/model/image_generation_model.dart';
import 'package:flutter_chatgpt/features/image_generation/data/remote_data_source/image_generation_remote_data_source.dart';
import 'package:http/http.dart' as http;

class ImageGenerationRemoteDataSourceImpl implements ImageGenerationRemoteDataSource{

  final http.Client httpClient;

  ImageGenerationRemoteDataSourceImpl({required this.httpClient});



  @override
  Future<ImageGenerationModel> getGenerateImages(String query)async {
    final String _endPoint = "images/generations";

    // ['256x256', '512x512', '1024x1024']
    Map<String, dynamic> rowParams = {
      "n":10,
      "size":"256x256",
      "prompt":query,
    };

    final encodedParams = json.encode(rowParams);

    final response = await httpClient.post(
      Uri.parse(endPoint(_endPoint)),
      body: encodedParams,
      headers: headerBearerOption(OPEN_AI_KEY),
    );

    if (response.statusCode == 200) {
      return ImageGenerationModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException(message: "Image Generation Server Exception");
    }



  }

}