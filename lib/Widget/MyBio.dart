import 'package:flutter/material.dart';

class MyBio extends StatefulWidget {
  const MyBio({Key? key}) : super(key: key);

  @override
  State<MyBio> createState() => _MyBioState();
}

class _MyBioState extends State<MyBio> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(child: Text("Create User",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ))),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'User Name',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Date Of Birth',
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.calendar_month_outlined,
                        ),
                        onPressed: () {
                          setState(() {
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  alignment: Alignment.center,
                  child:  RaisedButton(
                    color: Colors.black,
                    onPressed: () {
                      setState(() {
                       /* Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AdminCreateProject()),
                        );
*/
                      });
                    },
                    child:  Text('Submit',style: TextStyle(color: Colors.white),),
                  )
              ),
            ],
          )
      ),
    );
  }
}
