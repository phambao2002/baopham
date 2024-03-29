import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'home.dart';
import 'Second_Screen.dart';

class StarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 224, 62, 62),
            body: Center(
              child: Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Group 42.png',
                      // height: 50,
                      // width: 50,
                    )
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'The store of your \n dream. You will find \n everything that you \n need here.',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 35,
                      ),
                    )
                  ],
                ),
                // SizedBox(
                //   height: 60,
                // ),
                SizedBox(
                  width: 200.0,
                  height: 60.0,
                ),
                ElevatedButton(
                  child: Text("START SHOPPING",
                      style: TextStyle(fontSize: 19, color: Colors.black)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondScreen()),
                    );
                  },
                )

                // Center(
                //   // width: 270.0,

                //   // height: 60,
                //   child: RaisedButton(
                //     child: Container(
                //       height: 60.0,
                //       width: 270.0,
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(100.0),
                //           color: Colors.amber),
                //       child: Container(
                //         child: Text(
                //           "Start Shooping",
                //           style: TextStyle(
                //               fontSize: 20.0,
                //               fontWeight: FontWeight.bold,
                //               color: Color.fromARGB(255, 8, 8, 8)),
                //         ),
                //       ),
                //     ),

                // onPressed: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => SecondScreen()),
                //   );
                // },
                //     // // onPressed: () {},
                //     // child: Center(
                //     //   child: Text(
                //     //     "Start Shooping",
                //     //     style: TextStyle(
                //     //         fontSize: 20.0,
                //     //         fontWeight: FontWeight.bold,
                //     //         color: Colors.white),
                //     //   ),
                //     // ),
                //     // onPressed: () {
                //     //   Navigator.push(
                //     //     context,
                //     //     MaterialPageRoute(builder: (context) => SecondScreen()),
                //     //   );
                //     // },
                //   ),
                // ),
                // SizedBox(height: 120),
                // RaisedButton(
                //   child: SizedBox(
                //     child: Container(
                //       height: 60.0,
                //       width: 270,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(100.0),
                //         color: Colors.white,
                //       ),
                //       child: Center(
                //           child: Text(
                //             'START SHOPPING',
                //             style: TextStyle(
                //               fontSize: 20.0,
                //               fontWeight: FontWeight.bold,
                //               color: Color.fromARGB(255, 0, 0, 0),
                //             ),
                //           ),
                //           onPressed: () {
                //             Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                   builder: (context) => SecondScreen()),
                //             );
                //           }),
                //     ),
                //   ),
                // ),

                // child: Text(
                //   "START SHOPPING",
                //   style: TextStyle(
                //     fontSize: 20.0,
                //     fontWeight: FontWeight.bold,
                //     color: Color.fromARGB(255, 0, 0, 0),
                //   ),
                // ),
                // onPressed: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => SecondScreen()),
                //   );
                // }),
                //Anh
                // Row(

                //             child: Center(
                //               child: RaisedButton(
                //                 child: SizedBox(
                //                   child: Container(
                //                     height: 60.0,
                //                     width: 270,
                //                     decoration: BoxDecoration(
                //                       borderRadius:
                //                           BorderRadius.circular(100.0),
                //                       color: Colors.white,
                //                     ),
                //                     child: Center(
                //                         child: Text(
                //                           'START SHOPPING',
                //                           style: TextStyle(
                //                             fontSize: 20.0,
                //                             fontWeight: FontWeight.bold,
                //                             color: Color.fromARGB(255, 0, 0, 0),
                //                           ),
                //                         ),
                //                         onPressed: () {
                //                           Navigator.push(
                //                             context,
                //                             MaterialPageRoute(
                //                                 builder: (context) =>
                //                                     SecondScreen()),
                //                           );
                //                         }),
                //                   ),
                //                 ),
                //               ),
                //               // child: Text(
                //               //   'START SHOPPING',
                //               //   style: TextStyle(
                //               //     fontSize: 20.0,
                //               //     fontWeight: FontWeight.bold,
                //               //     color: Color.fromARGB(255, 0, 0, 0),
                //               //   ),
                //               // ),
                //             ),
                //           ),
                //         ),
                //       )
                //     ])
              ]),
            )));
  }
}
