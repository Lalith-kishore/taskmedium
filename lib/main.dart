import 'package:flutter/material.dart';
import 'package:taskmedium/Widget/AdminScreen.dart';

import 'API_class/Json.dart';
import 'Widget/UserScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _isObscure = true;
  void initState() {
    getKartDetails().whenComplete(() {
      setState(() {

      });
    });

    super.initState();
  }

  getKartDetails() async {
    debugPrint('Enter getDashboard');
    try {
       ( KartDetailsService.getData());
    } catch (e) {
      debugPrint(e.toString());
    }
  }
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final userController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      controller: userController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'User Name',
                      ),
                    ),
                  ),
            ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      obscureText: _isObscure,
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password',

      suffixIcon: IconButton(
      icon: Icon(
      _isObscure ? Icons.visibility : Icons.visibility_off,
      ),
      onPressed: () {
      setState(() {
      _isObscure = !_isObscure;
      });
      },
      ),



                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                      child:  RaisedButton(
                        color: Colors.black,
                        onPressed: () {
                          setState(() {
                            if(userController.text == "Admin@kssmart.co"){
                              if(passwordController.text == "123456"){
                                Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const AdminScreen()),
                            );
                              }}
                              else{
                                Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const UserScreen()),
                            );
                              }
                            }
                          );
                        },
                        child:  Text('Login',style: TextStyle(color: Colors.white),),
                      )
                ),
              ],
            ),
          )
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
