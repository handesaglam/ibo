

import 'package:flutter/material.dart';
import 'model/user.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class listapage extends StatefulWidget {
  @override
  _listapageState createState() => _listapageState();
}

class _listapageState extends State<listapage> {


List<User> list=List<User>();

Future<List<User>> fetchNotes() async {

    var url = "https://deprem.odabas.xyz/api/pure_api.php";

    var response = await http.get(url);

    var notes = List<User>();

    if (response.statusCode == 200) {
      var notesJson = json.decode(response.body);


      for (var noteJson in notesJson) {
        notes.add(User.fromJson(noteJson));




      }
    }
    return notes;
  }

@override
  void initState() {
    fetchNotes().then((value) {

      setState(() {
        list.addAll(value);
        print(list.length);



      });
    });
    
    super.initState();
  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
       


       itemBuilder: (context,index){

return Card(

child: Padding(padding: 

const EdgeInsets.only( right: 10.0,),

child: Column(children: [
new Padding(padding: EdgeInsets.only(left: 10,right: 20),
child: Text(list[index].enlem1),





)






],),




)




);












       },
      
      
      
      ),


      
    );
  }
}




