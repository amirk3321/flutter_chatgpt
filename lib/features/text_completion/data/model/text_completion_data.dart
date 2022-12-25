

class TextCompletionData{
  final String text;
  final num index;
  final String finish_reason;

  TextCompletionData({required this.text,required this.index,required this.finish_reason});


  factory TextCompletionData.fromJson(Map<String,dynamic> json){

    return TextCompletionData(
      text: json['text'],
      index: json['index'],
      finish_reason: json['finish_reason'],
    );
  }
}