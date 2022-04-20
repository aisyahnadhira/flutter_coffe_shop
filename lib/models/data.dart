import 'package:flutter/material.dart';

class CoffeeData{
  String kategori;
  List<String> food;
  List<String> image;
  List<String> price;

  CoffeeData({
    required this.kategori,
    required this.food,
    required this.image,
    required this.price,
  });
}

var CoffeeDataList = [
  CoffeeData(
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
  CoffeeData(
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
  
// class coba{
//     List<Map> chips = [
//       {
//         "id" : "1",
//         "name": "Expresso",
//       },
//       {
//         "id" : "2",
//         "name": "Cappuccino",
//       },
//       {
//         "id" : "3",
//         "name": "Black Coffee",
//       },
//       {
//         "id" : "4",
//         "name": "Coffee Latte",
//       },
//     ];
// }

// class belajar extends StatefulWidget {
//   const belajar({ Key? key }) : super(key: key);

//   @override
//   State<belajar> createState() => _belajarState();
// }

// class _belajarState extends State<belajar> {

//   List<Map> chips = [
//       {
//         "id" : "1",
//         "name": "Expresso",
//       },
//       {
//         "id" : "2",
//         "name": "Cappuccino",
//       },
//       {
//         "id" : "3",
//         "name": "Black Coffee",
//       },
//       {
//         "id" : "4",
//         "name": "Coffee Latte",
//       },
//     ];


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
          
//         ],
//       )
//     );
//   }
  
// }

// ActionChipNotifier actionChipNotifier({required bool renderUI}) =>
//   Provider.of<ActionChipNotifier>(context, listen: renderUI);

//   bool isChipId = 
//   actionChipNotifier(renderUI: true)
//   .kChipId == chips[index]['id'];
//   return ActionChip(
//     backgroundColor: Colors.white,
//     label: Text(
//       chips[index]['name'],
//       style: TextStyle(
//         color: isChipId ? Colors.black : Colors.white,
//         fontSize: 16,
//         fontWeight: FontWeight.w500,
//       ),
//     ),
//     onPressed: () {
//       actionChipNotifier(renderUI: false).setChipId(candidateChipId: chips[index]['id']);
//     },
//   );

//   class ActionChipNotifier extends ChangeNotifier {
//     int? _kChipId;
//     int? get kChipId => _kChipId;

//     setChipId({required int candidateChip}) {
//       _kChipId = candidateChip;
//       notifyListeners();
//     }
//   }