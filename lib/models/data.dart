class CoffeData{
  String kategori;
  List<String> food;
  List<String> image;
  List<String> price;

  CoffeData({
    required this.kategori,
    required this.food,
    required this.image,
    required this.price,
  });
}

var CoffeDataList = [
  CoffeData(
    kategori: 'Expresso',
    food: [
      'Expresso',
      'Black Coffee',
    ],
    image: [
      'assets/images/expresso.png',
      'assets/images/blackcoffee.png',
    ],
    price: [
      '\$5.00',
      '\$5.50',
    ],
  ),
  CoffeData(
    kategori: 'Cappuccino',
    food: [
      'Cappuccino',
      'Coffee Latte',
    ],
    image: [
      'assets/images/cappuccino.png',
      'assets/images/latte.png',
    ],
    price: [
      '\$10.00',
      '\$15.00',
    ],
  ),
];
  
