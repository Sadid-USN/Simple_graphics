import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chapter_lists.dart';

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
        home: GroupListViewPage());
  }
}



// SafeArea(
//         child: Container(
//           child: Center(
//             child: Text(
//             '200\$',
//             style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//             letterSpacing: 5.0,
//             wordSpacing: 5.0,
//             decoration: TextDecoration.lineThrough
//             ),
//             ),
//           ),
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/images/mindnode.jpg'),
//             ),
//           ),
//         ),
//       ),
//     );
