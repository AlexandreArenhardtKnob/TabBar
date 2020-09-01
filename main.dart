import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selecionado = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar no Flutter : "+selecionado.toString()),
          bottom: TabBar(
            onTap: (int sel){
              setState(() {
                selecionado = sel;
              });


            },
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.local_airport),
                text: "Avião",
              ),
              Tab(
                icon: Icon(Icons.directions_car),
                text: "Carro",
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
                text: "Bicicleta",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[

            SingleChildScrollView(
              padding: EdgeInsets.all(10),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.local_airport),
                  Text("Avião"),
                ],
              ),
            ),
            carro(),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }

  Widget carro (){
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.directions_car),
          Text("Carro"),
        ],
      ),
    );
  }

}
