import 'package:flutter/material.dart';
import 'package:fluttibo/addpage.dart';
import 'package:fluttibo/listpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {






  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
void dene(){


print("gfghkj");

}

@override
  void initState() {
 dene();
    super.initState();
       
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:new  AppBar(

    ),



      drawer: new Drawer(

      child: ListView(

       children: <Widget>[

         DrawerHeader(child: Text(



           "yeni proje",
         ),


           decoration: BoxDecoration(

color:Colors.lightBlue

             
           ),




         ),

         ListTile(


title: Text("yeni ekle"),
onTap: (){
  
Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new addpage()));


},


         ),

         ListTile(

           title: Text("listele255"),
           onTap: (){

Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new listapage()));


           },


         )



        ],





      ),










      ),














    );




  }
}
