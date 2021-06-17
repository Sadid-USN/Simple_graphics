import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainTables extends StatefulWidget {
  @override
  _MainTablesState createState() => _MainTablesState();
}

class _MainTablesState extends State<MainTables> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listMainTables.length,
        itemBuilder: (context, index) {
          final chapter = listMainTables[index];
          return InkWell(
            onTap: () {
          
              },
            
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  margin: EdgeInsets.all(5),
                  height: 70,
                  width: 380,
                  child: Center(
                      child: Text(
                    '${chapter['Name']}',
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  )),
                ),
              ],
            ),
          );
        });
  }
}

List listMainTables = [
  {
    'Name': 'Глава 1',
    'text': "Он чи қабл аз хутба ё (гуфторе) монанди он гуфта мешавад:"
        "Аз Абдуллоҳ ибни Масъуд ривоят аст, ӯ гуфт: паёмбари Аллоҳ (ﷺ) хутбаи ҳоҷатро ба мо таълим дод ӯ чунин мегуфт:"
  },
  {
    'Name': 'Глава 2',
    'text': "Он чи қабл аз хутба ё (гуфторе) монанди он гуфта мешавад:"
        "Аз Абдуллоҳ ибни Масъуд ривоят аст, ӯ гуфт: паёмбари Аллоҳ (ﷺ) хутбаи ҳоҷатро ба мо таълим дод ӯ чунин мегуфт:"
  },
  {
    'Name': 'Глава 3',
    'text': "Он чи қабл аз хутба ё (гуфторе) монанди он гуфта мешавад:"
        "Аз Абдуллоҳ ибни Масъуд ривоят аст, ӯ гуфт: паёмбари Аллоҳ (ﷺ) хутбаи ҳоҷатро ба мо таълим дод ӯ чунин мегуфт:"
  },
  {
    'Name': 'Глава 4',
    'text': "Он чи қабл аз хутба ё (гуфторе) монанди он гуфта мешавад:"
        "Аз Абдуллоҳ ибни Масъуд ривоят аст, ӯ гуфт: паёмбари Аллоҳ (ﷺ) хутбаи ҳоҷатро ба мо таълим дод ӯ чунин мегуфт:"
  },
];
