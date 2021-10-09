import 'package:flutter/material.dart';
import 'contact.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  // List<Widget>generateText(int count){
  //   List <Widget> textWidgets = [];

  //   for (var i=0 ;i < count ; i++){
  //     var widget = ListTile(
  //       title: Text('${i+1}'),
  //     );
  //     textWidgets.add(widget);
  //   }
  //   return textWidgets;
  // }
  
  @override
  Widget build(BuildContext context) {
////sadd
    //var contact = ConTact('name','023-1112-1112');
    

    List<ConTact> contactList = [
      ConTact('name susu', '091223123','assets/images/nextflow.png'),
      ConTact('Reborn' , '0812313','assets/images/error.png')
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (BuildContext context, int index) { 


          ConTact conTact = contactList[index];


          return ListTile(
            leading: Image.asset(conTact.imageSource),
            title: Text(conTact.name),
            subtitle: Text(conTact.phoneNumber),
            onTap: (){
              launch('tel: ${conTact.phoneNumber}');
            },
          );
       },)
    );
  }
}


