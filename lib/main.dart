import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        textTheme: GoogleFonts.ptSerifTextTheme(Theme.of(context).textTheme),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'About pepperoni',
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue,
                        spreadRadius: 1.0,
                        blurRadius: 3.0,
                        offset: Offset(3, 3)),
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.amber[400],
                        Colors.white,
                      ]),
                ),
                child: Text(
                  'Ingredients of italian pepperoni',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.green[100],
                        Colors.grey[200],
                      ]),
                ),
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  "Pepperoni is made from a mixture of ground beef mixed with spices and "
                  "flavorings. Salt and sodium nitrate are then added as curing agents, which prevent the"
                  "growth of unwanted microorganisms. Nitrate is also added, which gives pepperoni its color.",
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue,
                          spreadRadius: 1.0,
                          blurRadius: 3.0,
                          offset: Offset(3, 3)),
                    ],
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.yellow[400],
                          Colors.white,
                        ]),
                    border: Border.all(width: 1)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          Icon(Icons.star),
                          Icon(Icons.star),
                        ]),
                        Text(
                          '17 Rewiew',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.restaurant,
                                size: 50,
                                color: Colors.green,
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 5),
                                  child: Text(
                                    'Feed',
                                    style: TextStyle(fontSize: 18),
                                  )),
                              Text(
                                '2 - 4',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.restaurant,
                                size: 50,
                                color: Colors.green,
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 5),
                                  child: Text(
                                    'Feed',
                                    style: TextStyle(fontSize: 18),
                                  )),
                              Text(
                                '2 - 4',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.restaurant,
                                size: 50,
                                color: Colors.green,
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 5),
                                  child: Text(
                                    'Feed',
                                    style: TextStyle(fontSize: 18),
                                  )),
                              Text(
                                '2 - 4',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
