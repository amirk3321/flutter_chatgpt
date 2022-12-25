import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chatgpt/core/http_certificate_maneger.dart';
import 'package:flutter_chatgpt/features/app/home/home_page.dart';
import 'package:flutter_chatgpt/features/app/routes/on_generate_route.dart';
import 'package:flutter_chatgpt/features/app/splash/splash_screen.dart';
import 'package:flutter_chatgpt/features/image_generation/presentation/cubit/image_generation_cubit.dart';
import 'package:flutter_chatgpt/features/image_generation/presentation/cubit/image_generation_cubit.dart';
import 'package:flutter_chatgpt/features/text_completion/presentation/cubit/text_completion_cubit.dart';
import 'injection_container.dart' as di;

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = new MyHttpOverrides();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TextCompletionCubit>(
          create: (_) => di.sl<TextCompletionCubit>(),
        ),
        BlocProvider<ImageGenerationCubit>(
          create: (_) => di.sl<ImageGenerationCubit>(),
        ),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ChatGPT',
        onGenerateRoute: OnGenerateRoute.route,
        theme: ThemeData(brightness: Brightness.dark),
        initialRoute: '/',
        routes: {
          "/": (context) {
            return SplashScreen(
              child: HomePage(),
            );
          }
        },
      ),
    );
  }
}
