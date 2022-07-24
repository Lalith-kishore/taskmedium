import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmedium/Widget/AdminCreateUser.dart';

import 'AdminCreateProject.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  var user='';
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

                  title: Text("Create User"),
                  leading: Radio(
                      value: "Create User",
                      groupValue: user,
                      onChanged: (value){
                        setState(() {
                          user = value.toString();
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

                  title: Text("Create Project"),
                  leading: Radio(
                      value: "Create Project",
                      groupValue: user,
                      onChanged: (value){
                        setState(() {
                          user = value.toString();
                        });
                        print("Helllo" + user.toString());
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
                        if(user == "Create User") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (
                                context) => const CreateUser()),
                          );
                        }
                        else if(user == "Create Project"){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (
                                context) => const AdminCreateProject()),
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
