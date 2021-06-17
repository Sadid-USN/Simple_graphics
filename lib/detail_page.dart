import 'package:flutter/material.dart';

class DetalPage extends StatefulWidget {
  @override
  _DietalPageState createState() => _DietalPageState();
}

class _DietalPageState extends State<DetalPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
      return Text('${textchapter[index]['text']}');
    });
  }
}

List textchapter = [
  {
    'text': 'Он чи қабл аз хутба ё (гуфторе) монанди он гуфта мешавад:'
        'Аз Абдуллоҳ ибни Масъуд ривоят аст, ӯ гуфт: паёмбари Аллоҳ (ﷺ) хутбаи ҳоҷатро ба мо таълим дод ӯ чунин мегуфт:'
  }
];
