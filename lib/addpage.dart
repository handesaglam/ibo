

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';




class addpage extends StatefulWidget {
  @override
  _addpageState createState() => _addpageState();
}

class _addpageState extends State<addpage> {


SharedPreferences user,sur;



final namecontrol=TextEditingController();
final surnmae=TextEditingController();

@override
  void dispose() {
    namecontrol.dispose();
    surnmae.dispose();
    super.dispose();
  }


void dene(String name,String surname)async{
  String b;

  // user=await SharedPreferences.getInstance();



  //setState(() {
 // user.setString('name', name);




  //});


print(name);






}





  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(

  child: ListView(



children: [


   TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.vpn_key,

                          color: Colors.lightBlue,
                          ),
                          labelText: "Lütfen şirket kodunu giriniz",


                        ),

                        controller:namecontrol,
                       

                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.vpn_key,

                          color: Colors.lightBlue,
                          ),
                          labelText: "Lütfen şirket kodunu giriniz",


                        ),
                       controller: surnmae,

                      ),
                      

              Material(
                        borderRadius: BorderRadius.circular(30.0),
                        //elevation: 5.0,
                        child: MaterialButton(
                          onPressed: () {

                            String username = namecontrol.text;
                            String surname=surnmae.text;

                            if(username!=''){

                            



                              setState(() {

                            


                              });
                             dene(username, surname);

                            }




                          },
                          minWidth: 150.0,
                          height: 50.0,
                          color: Colors.blueAccent,
                          child: Text(
                            "Giriş",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )         











],

  
  
  
  
  
  
  ),










),









      
    );
  }
}

