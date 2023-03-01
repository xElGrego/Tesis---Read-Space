class Video {
  String name;
  String mediaUrl;
  String thumbUrl;
  Video({
    required this.name,
    required this.mediaUrl,
    required this.thumbUrl,
  });
}

List<Video> dataVideos = [
  Video(
    name: "Palabras homófonas y homógrafas",
    mediaUrl: "https://www.youtube.com/watch?v=gLonetd2ckQ&feature=youtu.be",
    thumbUrl: "assets/videos/homografas.jpg",
  ),
  Video(
    name: "Palabras polisémicas",
    mediaUrl: "https://www.youtube.com/watch?v=OxTDDgc-8dI&feature=youtu.be",
    thumbUrl: "assets/videos/polisemicas.jpg",
  ),
  Video(
    name: "Palabras paronimas",
    mediaUrl: "https://www.youtube.com/watch?v=xfh2AyLX7yY&feature=youtu.be",
    thumbUrl: "assets/videos/paronimas.png",
  ),
  Video(
    name: "Signos de puntuación",
    mediaUrl: "https://www.youtube.com/watch?v=iNQ67nGD8U8&feature=youtu.be",
    thumbUrl: "assets/videos/signos.jpeg",
  ),
];
