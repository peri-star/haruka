//import 'dart:ffi';

void main() {
  List<String> sociaLinks = [
    'telegram',
        'youTube',
        'instagram',
  ];
  Map<String, dynamic> channelProfail = {
    'channelName': 'Haruka',
    'subscribersCount': 1500,
    'rating': 4.8,
    'isVerified': true,
    'socialLinks': sociaLinks,
  };
  channelProfail['socialLinks'].add('Discord');
  channelProfail['socialLinks'].removeAt(1);
  channelProfail.addAll({'videoCount': 89});
  String channelName = channelProfail['channelName'];
  int subscribersCount = channelProfail['subscribersCount'];
  double rating = channelProfail['rating'];
  bool isVerified = channelProfail['isVerified'];
  List<String> finalSocailLinks = channelProfail['socialLinks'] as List<String>;
  int videoCount = channelProfail['videoCount'];

  print('''
==============================
      КАРТОЧКА КАНАЛА
==============================
Название кнала: $channelName
Количество подписчиков: $subscribersCount
Рейтинг: $rating /5.0
Верификация: ${isVerified ? "подтвержден" : "Не подтвержден"}
Количевство видеороликов: $videoCount
Количество социальных сетей: ${finalSocailLinks.length}
Итоговый список соцсетей: ${finalSocailLinks.join(',')}

''');
}
