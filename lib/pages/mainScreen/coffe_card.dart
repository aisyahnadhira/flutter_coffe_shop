import 'package:flutter/material.dart';

class CoffeeCard extends StatelessWidget {

  List<String> imageCoffee = [
    'assets/images/americano/ha.png',
    'assets/images/americano/ia.png',
    'assets/images/cappuccino/hc.png',
    'assets/images/cappuccino/ic.png',
  ];

  List<double> price = [4.29, 3.21, 6.46, 2.90];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 250,
                width: 160,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 135,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(imageCoffee[0]),
                            fit: BoxFit.cover)
                        ),
                      ),
                      ]
                    )
                  )
                ]
          
        
      )
        ]
      )
      
    );


  }
}
          
      // child: InkWell(
      //   onTap: (){
      //     Navigator.push(context, MaterialPageRoute(builder: (context) => CoffeeDetailsPage()));
      //   },
        
                        // Padding(
                        //   padding: EdgeInsets.all(15),
                        //   child: Column(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //       Text(
                        //         "Cappuccino",
                        //         style: TextStyle(color: Colors.white),
                        //       ),
                        //       SizedBox(
                        //         height: 3,
                        //       ),
                              
                        //       Row(
                        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //         children: [
                        //           Row(
                        //             children: [
                        //               Text(
                        //                 r'$ ',
                        //                 style: TextStyle(
                        //                     color: Color(0xffd17842),
                        //                     fontWeight: FontWeight.bold,
                        //                     fontSize: 20),
                        //               ),
                        //               Text(
                        //                 "${price[index]}",
                        //                 style: TextStyle(
                        //                     color: Colors.white,
                        //                     fontSize: 20,
                        //                     fontWeight: FontWeight.bold),
                        //               )
                        //             ],
                        //           ),
                        //           Container(
                        //               height: 30,
                        //               width: 30,
                        //               decoration: BoxDecoration(
                        //                   color: Color(0xffd17842),
                        //                   borderRadius:
                        //                       BorderRadius.circular(10)),
                        //               child: Icon(
                        //                 Icons.add,
                        //                 color: Colors.white,
                        //                 size: 20,
                        //               ))
                        //         ],
                        //       )
                        //     ],
                        //   ),
                        // )
                      