import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  List<String> imageCoffee = [
    'assets/images/coffee1.png',
    'assets/images/coffee2.png',
    'assets/images/coffee3.png',
    'assets/images/coffee4.png',
  ];

  List<String> coffeeName = [
    'Double Espresso',
    'Espresso Macchiato',
    'Cappuccino',
    'Latte',
  ];
  List<double> price = [5.25, 4.55, 6.46, 2.90];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 7, vsync: this);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 48.0, left: 24.0, right: 24.0, bottom: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage('assets/images/sehun.png'),
                    backgroundColor: Colors.transparent,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined, color: Colors.white),
                      Text("Seoul, South Korea",
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                    ],
                  ),
                  ClipOval(
                    child: Material(
                      color: Color.fromARGB(224, 230, 228, 228), // Button color
                      child: InkWell(
                        splashColor: Colors.white, // Splash color
                        onTap: () {},
                        child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Icon(
                              Icons.notifications_none,
                              size: 24,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("Good Morning Sehun",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
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
                        fontWeight: FontWeight.w600,
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
                    TabDetail("Expresso"),
                    TabDetail("Cappuccino"),
                    TabDetail("Frappuccino"),
                    TabDetail("Latte"),
                    TabDetail("Macchiato"),
                    TabDetail("Mocha"),
                    TabDetail("Others"),
                  ]),
              SizedBox(height: 20),
              Row(
                children: [
                  CoffeCard(context, 0),
                  SizedBox(width: 25),
                  CoffeCard(context, 1),
                  
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("Suggestions",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      )),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  CoffeCard(context, 2),
                  SizedBox(width: 25),
                  CoffeCard(context, 3),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column CoffeCard(BuildContext context, int index) {
    return Column(children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(136, 48, 47, 47),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.35,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(imageCoffee[index]),
                                
                              ),
                            ),
                          ),
                          Text(
                            coffeeName[index],
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Row(
                                children: [
                                Text(
                                  "\$ " + price[index].toString(),
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 52),
                                ClipOval(
                                  child: Material(
                                    color: Colors.grey[800], // Button color
                                    child: InkWell(
                                      splashColor: Colors.grey, // Splash color
                                      onTap: () {},
                                      child: SizedBox(
                                          width: 30,
                                          height: 30,
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 20,
                                          )),
                                    ),
                                  ),
                                ),
                              ])
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
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
