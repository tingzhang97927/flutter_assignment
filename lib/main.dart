import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_app/models/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: const Home(title: "Travel App"),
    );
  }
}


class Home extends StatelessWidget {
  final String? title;
  const Home({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title!), backgroundColor: Colors.blue.shade300,),
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network("https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg"),
        // )
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Colors.blue.shade400),
                child: const Center(
                  child: Text("Places", style:
                  TextStyle(fontSize: 20, color: Colors.white, )),
                ),
              ),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Colors.blue.shade400),
                child: const Center(
                  child: Text("Hotels", style:
                  TextStyle(fontSize: 20, color: Colors.white, )),
                ),
              ),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Colors.blue.shade400),
                child: const Center(
                  child: Text("Flights", style:
                  TextStyle(fontSize: 20, color: Colors.white, )),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text("Recommend Destinations", style:
            TextStyle(fontSize: 20, color: Colors.blueGrey, fontWeight: FontWeight.bold,),),
          ),
          SizedBox(height: 10,),
          GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: datalist.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (BuildContext context, index) {
              return Container(
                  color: Colors.blue.shade50,
                  child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.lightBlueAccent,
                          child: Center(
                            child:Column(
                                children: [
                                  Container(
                                      width:100,
                                      height: 70,
                                      color: Colors.lightBlueAccent,
                                      child: Image.network(datalist[index].cityImage, fit: BoxFit.fitHeight)),
                                  Text(datalist[index].cityName, style: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold))
                                ]),
                          ),
                          //child: Text(datalist[index].cityDescription),
                        )]

                  )
              );

            }),
        ],
      ),
      )
    );
  }
}
