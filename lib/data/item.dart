class Items {
  String title;
  String subtitle;
  String event;
  String route;
  String img;
  Items(
      {required this.title,
      required this.subtitle,
      required this.route,
      required this.event,
      required this.img});
}

List<Items> dataItem = [
  Items(
      title: "Libros",
      subtitle: "Descripción de libros",
      event: " ",
      route: '/libros',
      img: "assets/photos/calendar.png"),
  Items(
      title: "Preguntas",
      subtitle: "Descripción de Preguntas",
      event: " ",
      route: '/preguntas',
      img: "assets/photos/food.png"),
  Items(
      title: "Videos",
      subtitle: "Descripción de Videos",
      event: " ",
      route: '/videos',
      img: "assets/photos/map.png"),
  Items(
      title: "Actividades",
      subtitle: "Descripción de liveworsheep",
      event: " ",
      route: '/actividades',
      img: "assets/photos/festival.png")
];
