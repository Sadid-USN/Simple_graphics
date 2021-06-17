import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_flutter_cours/data/nMbox.dart';

class HomePage extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarBrightness: Brightness.light));
    return Scaffold(
        extendBodyBehindAppBar: false,
        body: Padding(
          padding: EdgeInsets.only(top: 25),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NMButton(
                        icon: Icons.menu,
                      ),
                    ],
                  ),
                  AvataImage(),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Sadid',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: fCL)),
                  Text('Tajikistan',
                      style:
                          TextStyle(fontWeight: FontWeight.w200, color: fCL)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Darul asar cod,\n junior flutter Develloper',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: fCL)),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      NMButton(
                        icon: FontAwesomeIcons.facebookF,
                      ),
                      NMButton(
                        icon: FontAwesomeIcons.twitter,
                      ),
                      NMButton(
                        icon: FontAwesomeIcons.instagram,
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Gradesbox(
                        icon: FontAwesomeIcons.dribbble,
                        count: '35',
                        category: 'Shots',
                      ),
                      Gradesbox(
                        icon: FontAwesomeIcons.userAlt,
                        count: '1.6k',
                        category: 'folowers',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Gradesbox(
                        icon: FontAwesomeIcons.heart,
                        count: '5.4k',
                        category: 'likes',
                      ),
                      Gradesbox(
                        icon: FontAwesomeIcons.user,
                        count: '450',
                        category: 'folowing',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Gradesbox(
                        icon: FontAwesomeIcons.glassWhiskey,
                        count: '25',
                        category: 'shots',
                      ),
                      Gradesbox(
                        icon: FontAwesomeIcons.folderOpen,
                        count: '7',
                        category: 'projects',
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
              DraggableScrollableSheet(
                initialChildSize: 0.07,
                maxChildSize: 0.4,
                minChildSize: 0.07,
                builder: (BuildContext context, scroll) {
                  return Container(
                    decoration: nMbox,
                    child: ListView(
                      controller: scroll,
                      children: [
                        Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Icon(
                                  Icons.share,
                                  color: fCL,
                                ),
                              ),
                              Text(
                                'Share',
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700,
                                    color: fCL),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'This is my first design work, subscribe and\nsmash like button',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: fCL),
                              ),
                              SizedBox(
                                height: 45,
                              ),
                              Container(
                                width: 240,
                                padding: EdgeInsets.all(10),
                                decoration: nMboxInvert,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.facebookF,
                                      color: fCL,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.twitter,
                                      color: fCL,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.instagram,
                                      color: fCL,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.whatsapp,
                                      color: fCL,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              FaIcon(
                                
                                FontAwesomeIcons.copy,
                                color: Colors.red.shade800,
                              ),
                              Text('Copy link'),
                            ],
                          ),
                        ),
                        SizedBox(height: 5,)
                      ],
                    ),
                  );
                },
              ),

               
            ],
          ),
        ));
  }
}

class Gradesbox extends StatelessWidget {
  final IconData icon;
  final String count;
  final String category;

  const Gradesbox({Key key, this.icon, this.count, this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(left: 15, right: 15),
      decoration: nMboxInvert,
      child: Row(
        children: [
          FaIcon(
            icon,
            color: Colors.red.shade800,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            count,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w700, color: fCL),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            category,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: fCL),
          ),
        ],
      ),
    ));
  }
}

class AvataImage extends StatelessWidget {
  const AvataImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8),
      decoration: nMbox,
      child: Container(
        decoration: nMbox,
        padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage('images/bmi.png'))),
        ),
      ),
    );
  }
}

class NMButton extends StatelessWidget {
  final IconData icon;

  const NMButton({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 55,
      decoration: nMbox,
      child: Icon(
        icon,
        color: fCL,
      ),
    );
  }
}
// List<Widget> mainTables = [
//   MainTables(),
// ];
