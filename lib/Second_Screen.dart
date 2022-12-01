import 'package:flutter/material.dart';
import 'Star_screen.dart';
import 'home.dart';

void main() {
  runApp(const SecondScreen());
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MySecondScreen(),
    );
  }
}

class MySecondScreen extends StatefulWidget {
  const MySecondScreen({Key? key}) : super(key: key);

  @override
  State<MySecondScreen> createState() => _MySecondScreenState();
}

class _MySecondScreenState extends State<MySecondScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(color: Colors.redAccent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 20,
                    ),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 130, 0, 0),
                width: 800,
                height: 700,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                      child: Text("LanShop",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                      child: Text("OnlineShopping",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextFormField(
                              controller: emailController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return ("vui lòng nhập lại Email");
                                }
                                if (!RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value)) {
                                  return ("Vui lòng nhập email hợp lệ");
                                }
                                return null;
                              },
                              onSaved: (value) {
                                emailController.text = value!;
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Password",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextFormField(
                              controller: passwordController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return ("Mật khẩu bắt buộc ");
                                }
                                if (!RegExp(
                                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                    .hasMatch(value)) {
                                  return ("Mâht khẩu không hợp lệ");
                                }
                              },
                              onSaved: (value) {
                                passwordController.text = value!;
                              },
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Forgot Password",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: RaisedButton(
                                  color: Colors.green,
                                  child: Text("Login"),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()),
                                    );
                                  }),
                            ),
                            // SizedBox(
                            //   height: 20,
                            // ),
                            // ElevatedButton(
                            //   onPressed: () {
                            //     if (_formKey.currentState!.validate()) {
                            //       print("Đăng nhập thành công");
                            //     }
                            //   },
                            //   // style: ElevatedButton.styleFrom(
                            //   //     primary: Color.fromARGB(255, 255, 255, 255)),
                            //   // child: SizedBox(
                            //   //   // width: 400,
                            //   //   // height: 50,
                            //   child: (RaisedButton(
                            //           color: Colors.green,
                            //           child: Text("Login"),
                            //           onPressed: () {
                            //             Navigator.push(
                            //               context,
                            //               MaterialPageRoute(
                            //                   builder: (context) => Home()),
                            //             );
                            //           })
                            //       // child:
                            //       //     // Text(
                            //       //     //   "Login",
                            //       //     //   style: TextStyle(
                            //       //     //       fontSize: 20,
                            //       //     //       color: Colors.white,
                            //       //     //       fontWeight: FontWeight.bold),
                            //       //     // ),

                            //       //     // RaisedButton(
                            //       //     //     color: Colors.green,
                            //       //     //     child: Text("Login"),
                            //       //     //     onPressed: () {
                            //       //     //       Navigator.push(
                            //       //     //         context,
                            //       //     //         MaterialPageRoute(
                            //       //     //             builder: (context) => Home()),
                            //       //     //       );
                            //       //     //     }),
                            //       ),
                            // ),
                            // ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Or Sign in with",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Image.network(
                                  'data:image/png;base64,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',
                                  width: 40,
                                  height: 40,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs4QqypbHrFtRuXnFgMcW2taWhb3mtHRHr8w&usqp=CAU',
                                  width: 40,
                                  height: 40,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Image.network(
                                  'data:image/jpeg;base64,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',
                                  width: 40,
                                  height: 40,
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Do you have an accout ?  "),
                                Text(
                                  "Sign up now.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
