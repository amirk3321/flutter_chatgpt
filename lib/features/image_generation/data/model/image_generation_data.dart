class ImageGenerationData{
  final String url;

  ImageGenerationData({required this.url});


  factory ImageGenerationData.fromJson(Map<String,dynamic> json){

    return ImageGenerationData(
      url: json['url'],
    );
  }
}