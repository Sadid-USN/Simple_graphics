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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.blue[400],
                    border: Border.all(width: 2)),
                alignment: Alignment.center,
                height: 45,
                child: Text(
                  'Ingredients of italian pepperoni',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: double.infinity,
                child: Text(
                  "Pepperoni is made from a mixture of ground beef mixed with spices and"
                  "flavorings. Salt and sodium nitrate are then added as curing agents, which prevent the"
                  "growth of unwanted microorganisms. Nitrate is also added, which gives pepperoni its color.",
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(width: 2),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
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
                          ],
                        ),
                        Text(
                          ' 17 Reviews',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
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
                                color: Colors.green,
                                size: 40,
                              ),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text('Feed')),
                              Text('2 - 4'),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.category,
                                color: Colors.green,
                                size: 40,
                              ),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text('Feed')),
                              Text('2 - 4'),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.emoji_food_beverage,
                                color: Colors.green,
                                size: 40,
                              ),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text('Feed')),
                              Text('2 - 4'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
