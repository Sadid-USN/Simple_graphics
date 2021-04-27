import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

List _dataChapters = [
  {
    "albumId": 1,
    "id": 1,
    "title": "Flutter for beginers",
    "url": "https://via.placeholder.com/600/92c952",
    "thumbnailUrl": "https://images.ctfassets.net/23aumh6u8s0i/2YLNeus0bBIm7GOwoj7uOJ/e7741fe6f0d878abef7e940521e9a175/flutter.png",
    "author": 'Sadid',
    "data": '27/04/21',
    "group": 'Flutter',
  },
  {
    "albumId": 1,
    "id": 2,
    "title": "Android Tutorial",
    "url": "https://via.placeholder.com/600/771796",
    "thumbnailUrl": "https://www.kv.by/sites/default/files/pictures/mainimage/2019/03/383937580.jpg",
    "author": 'Sadid',
    "data": '27/04/21',
    "group": 'Android',
  },
  {
    "albumId": 1,
    "id": 3,
    "title": "Python Tuturial",
    "url": "https://via.placeholder.com/600/24f355",
    "thumbnailUrl": "https://cdn2.specialist.ru/Content/Image/Course//pyml.jpg",
    "author": 'Sadid',
    "data": '27/04/21',
    "group": 'Python',
  },
  {
    "albumId": 1,
    "id": 4,
    "title": "IOS Tutorial",
    "url": "https://via.placeholder.com/600/d32776",
    "thumbnailUrl": "https://play-lh.googleusercontent.com/TVVIZnPw3rAi9o1DfCRH97UbbSRGqLo7fFKoDIYhQZ2j1B2T-fOQkDuLlCqki-gYKg",
    "author": 'Sadid',
    "data": '27/04/21',
    "group": 'IOS',
  },
  {
    "albumId": 1,
    "id": 5,
    "title": "React Native Tutorial",
    "url": "https://via.placeholder.com/600/f66b97",
    "thumbnailUrl": "https://cdn.evilmartians.com/front/posts/optimizing-react-virtual-dom-explained/cover-a1d5b40.png",
    "author": 'Sadid',
    "data": '27/04/21',
    "group": 'React',
  },
];

class GroupListViewPage extends StatefulWidget {
  @override
  _GroupListViewPageState createState() => _GroupListViewPageState();
}

class _GroupListViewPageState extends State<GroupListViewPage> {
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ListViewTest',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: GroupedListView<dynamic, String>(
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        elements: _dataChapters,
        groupBy: (element) => element['group'],
        groupSeparatorBuilder: (String groupByValue) => Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Flexible(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        groupByValue,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        itemBuilder: (context, dynamic element) {
          return Card(
            elevation: 13,
            shadowColor: Colors.teal,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: ClipRRect(
                    child: Image(
                      image: NetworkImage(element['thumbnailUrl']),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  )),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              element['title'],
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 10, right: 10, top: 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.account_circle_sharp,
                                  color: Colors.blue,
                                  size: 16,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text('${element['author']}'),
                                ),
                              ],
                            ),
                          ),
                           Padding(
                            padding:
                                EdgeInsets.only(left: 10, right: 10, top: 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  color: Colors.green,
                                  size: 16,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text('${element['calendar_today']}'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemComparator: (item1, item2) =>
            item1['title'].compareTo(item2['title']), // optional
        useStickyGroupSeparators: true, // optional
        floatingHeader: true, // optional
        order: GroupedListOrder.ASC, // optional
      ),
    );
  }
}
