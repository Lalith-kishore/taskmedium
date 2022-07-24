import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AdminCreateProject.dart';
import 'MyBio.dart';
import 'MyProject.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  var bio='';
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 100),
                child:  ListTile(
                  title: Text("My Bio"),
                  leading: Radio(
                      value: "My Bio",
                      groupValue: bio,
                      onChanged: (value){
                        setState(() {
                          bio = value.toString();
                        });
                      }),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 100),
                child:  ListTile(

                  title: Text("My Project"),
                  leading: Radio(
                      value: "My Project",
                      groupValue: bio,
                      onChanged: (value){
                        setState(() {
                          bio = value.toString();
                        });
                        print("hello1" + bio.toString());
                      }),
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
                        if(bio == "My Bio") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (
                                context) => const MyBio()),
                          );
                        }
                        else if(bio == "My Project"){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (
                                context) => const MyProject()),
                          );
                        }
                      });
                    },
                    child:  Text('Login',style: TextStyle(color: Colors.white),),
                  )
              ),
            ],
          )
      ),
    );
  }
}
