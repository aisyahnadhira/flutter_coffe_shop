import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
                              fontWeight: FontWeight.w300,
                              color: Colors.white)),
                    ],
                  ),
                  ClipOval(
                    child: Material(
                      color: Colors.white, // Button color
                      child: InkWell(
                        splashColor: Colors.grey, // Splash color
                        onTap: () {},
                        child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Icon(
                              Icons.notifications_none,
                              size: 30,
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
                        fontSize: 30,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      )),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  fillColor: Color.fromARGB(255, 238, 237, 240),
                  filled: true,
                  hintText: "Search Coffe",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(36.0),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                ),
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
              Row()

            ],
          ),
        ),
      ),
    );
  }
}
