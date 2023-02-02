class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({required this.title, required this.subtitle, required this.event, required this.img});
}

List<Items> dataItem = [
  Items(
      title: "Libros",
      subtitle: "Descripción de libros",
      event: "3 Events",
      img: "assets/photos/calendar.png"),
  Items(
      title: "Preguntas",
      subtitle: "Descripción de Preguntas",
      event: "3 Events",
      img: "assets/photos/food.png"),
  Items(
      title: "Videos",
      subtitle: "Descripción de Videos",
      event: "3 Events",
      img: "assets/photos/map.png"),
  Items(
      title: "Actividades",
      subtitle: "Descripción de liveworsheep",
      event: "3 Events",
      img: "assets/photos/festival.png")
];
