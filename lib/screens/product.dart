class Product {
  final int id, price;
  final String title, description, image;

  Product({required this.id, required this.price, required this.title, required this.description, required this.image});
}

// list of products
// for our demo
List<Product> products = [
  Product(
    id: 1,
    price: 00,
    title: "JavaScript - Evento",
    image: "assets/img/jslogo1.png",
    description:
        "Mantenga su distancia - Un programa de comedia socialmente distanciado Vol. 10 / Por Mauricio Pérez Sanches",
  ),
  Product(
    id: 4,
    price: 268,
    title: "Flutter - Curso",
    image: "assets/img/logoflutter.png",
    description:
        "Por Mauricio De Jesús Pérez Sanchez",
  ),
  Product(
    id: 9,
    price: 268,
    title: "React Js - Curso",
    image: "assets/img/re.png",
    description:
        "Curso Socialmente responsable, dedicado a programadores jr. Con conocimientos previos en JavaScript.",
  ),
   Product(
    id: 1,
    price: 180,
    title: "JavaScript - Evento",
    image: "assets/img/jslogo1.png",
    description:
        "Evento dirigido para todas aquellas personas interesadas en el mundo del desarrollo Vol. 10 / Por Mauricio Pérez Sanches",
  ),
  Product(
    id: 4,
    price: 00,
    title: "Flutter  - Curso",
    image: "assets/img/logoflutter.png",
    description:
        "Curso avanzado de flutter para desarrolladores de apps vol. 2 / Por Mauricio De Jesús Pérez Sanchez",
  ),
   Product(
    id: 1,
    price: 180,
    title: "JavaScript - Evento",
    image: "assets/img/jslogo1.png",
    description:
        "Evento dirigido para todas aquellas personas interesadas en el mundo del desarrollo Vol. 10 / Por Mauricio Pérez Sanches",
  ),
  Product(
    id: 9,
    price: 268,
    title: "React Js - Curso",
    image: "assets/img/re.png",
    description:
        "Curso Socialmente responsable, dedicado a programadores jr. Con conocimientos previos en JavaScript.",
  ),
];