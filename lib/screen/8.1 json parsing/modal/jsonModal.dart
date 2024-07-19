class JsonImage
{
  late String title;
  late String url;

  JsonImage({required this.title,required this.url});

  factory JsonImage.fromMap(Map m1)
  {
    return JsonImage(title: m1['title'], url: m1['url']);
  }

}