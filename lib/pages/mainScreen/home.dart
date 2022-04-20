import 'package:coffe_shop/models/data.dart';
import 'package:coffe_shop/pages/mainScreen/cart.dart';
import 'package:coffe_shop/pages/mainScreen/coffe_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  List<String> imageCoffee = [
    'assets/images/ha.png',
    'assets/images/ia.png',
    'assets/images/hc.png',
    'assets/images/ic.png',
  ];

  List<String> coffeeName = [
    'Americano',
    'Latte',
    'Cappuccino',
    'Espresso',
  ];
  List<double> price = [4.29, 3.21, 6.46, 2.90];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 7, vsync: this);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: InkWell(
                      splashColor: Colors.white, // Splash color
                      onTap: () {},
                      child: SizedBox(
                          height: 40,
                          width: 40,
                          child: Icon(
                            Icons.menu,
                            size: 30,
                          )),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined, color: Colors.white),
                      Text("Seoul, South Korea",
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w300,
                              color: Colors.white)),
                    ],
                  ),
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage('assets/images/sehun.png'),
                    backgroundColor: Colors.transparent,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("Good Morning Sehun",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      )),
                ],
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(bottom: 6.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(224, 230, 228, 228),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                    decoration: InputDecoration(
                        hintText: "Find your coffee...",
                        hintStyle: TextStyle(color: Color(0xff3c4046)),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 56, 56, 56),
                        )),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.black87,
                    )),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("Categories",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      )),
                ],
              ),
              SizedBox(height: 20),
              TabBar(
                  isScrollable: true,
                  controller: _tabController,
                  labelColor: Colors.black,
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  unselectedLabelColor: Color.fromARGB(255, 203, 204, 206),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color.fromARGB(224, 230, 228, 228),
                  ),
                  tabs: [
                    TabDetail("Americano"),
                    TabDetail("Cappuccino"),
                    TabDetail("Frappuccino"),
                    TabDetail("Latte"),
                    TabDetail("Macchiato"),
                    TabDetail("Mocha"),
                    TabDetail("Others"),
                  ]),
              SizedBox(height: 20),

              Card(context, 1),
              Card(context, 2),
              Card(context, 3)
              // CoffeeCard()
            ],
          ),
        ),
      ),
    );
  }

  Row Card(BuildContext context, int index) {
    return Row(children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff242931),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imageCoffee[index]),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          coffeeName[index],
                          style: TextStyle(
                              color: Color(0xff919293),
                              fontSize: 20,
                              fontWeight: FontWeight.w200),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              Text(
                                r'$ ',
                                style: TextStyle(
                                    color: Color(0xffd17842),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),

                              Text(
                                price[index].toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),                      
                              SizedBox(width: 15),
                              Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Color(0xffd17842),
                                      borderRadius:
                                          BorderRadius.circular(10)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20,
                                  ))
                            ])
                          ],
                        )
                      ],
                    ),
                  )
                ]),
              )
            ]);
  }

  Container TabDetail(String kategori) {
    return Container(
      child: Tab(
        child: Row(children: [
          Text(kategori),
        ]),
      ),
    );
  }
}
