part of 'image_generation_cubit.dart';

abstract class ImageGenerationState extends Equatable {
  const ImageGenerationState();
}

class ImageGenerationInitial extends ImageGenerationState {
  @override
  List<Object> get props => [];
}

class ImageGenerationLoading extends ImageGenerationState {
  @override
  List<Object> get props => [];
}

class ImageGenerationLoaded extends ImageGenerationState {
  final ImageGenerationModel imageGenerationModelData;

  ImageGenerationLoaded({required this.imageGenerationModelData});
  @override
  List<Object> get props => [];
}

class ImageGenerationFailure extends ImageGenerationState {
  final String? errorMsg;

  ImageGenerationFailure({this.errorMsg});
  @override
  List<Object> get props => [];
}