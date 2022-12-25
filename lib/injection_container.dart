


import 'package:flutter_chatgpt/features/image_generation/image_generation_injection_container.dart';
import 'package:flutter_chatgpt/features/text_completion/text_completion_injection_container.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {


  final http.Client httpClient = http.Client();


  sl.registerLazySingleton<http.Client>(() => httpClient);

  await textCompletionInjectionContainer();
  await imageGenerationInjectionContainer();

}