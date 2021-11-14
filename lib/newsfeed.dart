import 'dart:ui';

import 'package:eventappui/data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'contants.dart';
import 'eventdetailpage.dart';

class newsfeed extends StatefulWidget {
  const newsfeed({Key? key}) : super(key: key);

  @override
  _newsfeedState createState() => _newsfeedState();
}

class _newsfeedState extends State<newsfeed> {
  String likeicon = "assets/Heart-liked.png";

  int _selectedIndex = 0; //New


  final eventName = ['Albania', 'Andorra'];
  final eventType = ['Albia', 'Anda'];
  final eventdata = ['August 19, 2021', 'August 29, 2021'];
  final address = ['Albania sfdsfsf', 'Andorra sfsfd'];
  final urlimage = [
    'https://images.unsplash.com/photo-1519315901367-f34ff9154487?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80',
    'https://images.unsplash.com/photo-1541753866388-0b3c701627d3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Padding(
            padding: const EdgeInsets.only(left: 23, top: 100, right: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(DateFormat.yMMMMd('en_US').format(DateTime.now()),
                            style: TextStyle(
                              color: dataColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.32,
                            )),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text("Discover Events",
                            style: TextStyle(
                              fontFamily: 'Rubik',
                              color: Color(0xff070a15),
                              fontSize: 26,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            )),
                      ],
                    ),
                    //Notification btn
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 47.7,
                        height: 47.3,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6.0),
                          boxShadow: [
                            BoxShadow(
                                color: dropShadColor,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 10.0,
                                spreadRadius: 0),
                          ],
                          image: DecorationImage(
                            image: AssetImage('assets/Notification-Icon.png'),
                            scale: 0.9,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 32.0,
                ),
                //search bar
                Container(
                  width: 355,
                  height: 54,
                  decoration: new BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0x143f3f3f),
                          offset: Offset(4, 4),
                          blurRadius: 15,
                          spreadRadius: 0)
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                          width: 285,
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Image(
                                  image: AssetImage('assets/Search-icon.png')),
                              hintText: "Search Events",
                              hintStyle: TextStyle(
                                color: Color(0xffc7c7c7),
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      //Filter button
                      Container(
                        width: 42,
                        height: 41.33,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment(6.123234262925839e-17, 1),
                              end: Alignment(-1, 6.123234262925839e-17),
                              colors: [
                                Color.fromRGBO(73, 182, 245, 1),
                                Color.fromRGBO(49, 128, 238, 1)
                              ]),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f3589ef),
                              blurRadius: 15,
                              offset: Offset(4, 4),
                            ),
                          ],
                        ),
                        child: Stack(children: <Widget>[
                          Center(
                              child: Image(
                            image: AssetImage('assets/Filter-icon.png'),
                          )),
                        ]),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 22.0,
                ),
                //Categories list view
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                       
                        color: Color(0xff070a15),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Container(
                      width: 340,
                      height: 46,
                      margin: EdgeInsets.only(left: 5, top: 10,bottom: 10),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          children: [
                            categoryList('ALL', true),
                            categoryList('Sports', false),
                            categoryList('Music', false),
                            categoryList('Visual Arts', false),
                            categoryList('Painting', false),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                
                Column(
                  children: [
                    SizedBox(
                        height: 400,
                        child: ListView.builder(
                            itemCount: events.length,
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              
                              return InkWell(
                                onTap: (){
                                  Navigator.push(context,PageRouteBuilder(pageBuilder: (context,a,b)=>EventDetails( 

                                    eventinfo: events[index],
                                  )));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  width: 329,
                                  height: 358,
                                  decoration: new BoxDecoration(
                                    color: Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x0c000000),
                                          offset: Offset(10, 10),
                                          blurRadius: 25,
                                          spreadRadius: 0)
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 24,
                                            left: 23,
                                            right: 23,
                                            bottom: 20),
                                        child: Container(
                                          width: 284,
                                          height: 192,
                                          decoration: new BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.6),
                                                  spreadRadius: -10,
                                                  blurRadius: 25,
                                                  offset: Offset(0,
                                                      20), // changes position of shadow
                                                ),
                                              ],
                                              color: Color(0xffc4c4c4),
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: NetworkImage(
                                                      events[index].urlImage)),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                      Positioned(
                                        top: 35,
                                        left: 260,
                                        //LIKED BUTTON
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (likeicon ==
                                                  "assets/Heart-liked.png") {
                                                likeicon = "assets/Heart.png";
                                              } else {
                                                likeicon =
                                                    "assets/Heart-liked.png";
                                              }
                                            });
                                          },
                                          child: Container(
                                            width: 38,
                                            height: 38,
                                            decoration: new BoxDecoration(
                                                color:
                                                    Colors.grey.withOpacity(0.6),
                                                borderRadius:
                                                    BorderRadius.circular(6)),
                                            child: ClipRect(
                                              child: BackdropFilter(
                                                filter: ImageFilter.blur(
                                                    sigmaX: 2.0, sigmaY: 2.0),
                                                child: Container(
                                                  decoration: new BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              likeicon))),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                          top: 235,
                                          left: 24,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(events[index].eventName,
                                                  style: TextStyle(
                                                    color: Color(0xff070a15),
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w700,
                                                    fontStyle: FontStyle.normal,
                                                  )),
                                              Row(
                                                children: [
                                                  Text(events[index].eventType,
                                                      style: TextStyle(
                                                        color: Color(0xff3a94f1),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                      )),
                                                  Text(" - ",
                                                      style: TextStyle(
                                                        color: Color(0xff3a94f1),
                                                        fontSize: 32,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                      )),
                                                  Text(events[index].eventDate,
                                                      style: TextStyle(
                                                        color: Color(0xff727272),
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                      ))
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 24,
                                                    height: 24,
                                                    decoration: new BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                'assets/Loc-icon.png'))),
                                                  ),
                                                  SizedBox(width: 8),
                                                  Text(
                                                    events[index].eventAddress,
                                                    style: TextStyle(
                                                      color: Color(0xff717171),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              );
                            }))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        unselectedIconTheme: IconThemeData(
    color: Color(0xffb7b7b7),
  ),
  unselectedItemColor: Color(0xffb7b7b7),
        backgroundColor: Colors.white,
        elevation: 10,
showUnselectedLabels: true,
  selectedIconTheme: IconThemeData(color: Colors.blue),
  selectedItemColor: Colors.blue,
  selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: const <BottomNavigationBarItem>[
          
          BottomNavigationBarItem(
          
            
        icon: Icon(Icons.home_rounded, ),
        label: 'Home',
        
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.airplane_ticket_rounded),
        label: 'My Tickets',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.save_rounded),
        label: 'Saved',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_pin_circle_rounded),
        label: 'Profile',
      ),

        ],
        currentIndex: _selectedIndex, //New
  onTap: _onItemTapped,   

          ),
    );
  }

  Container categoryList(String categoryname, bool notSelected) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(57, 146, 241, 0.15000000596046448),
              offset: Offset(4, 4),
              blurRadius: 15)
        ],
        gradient: LinearGradient(
            begin: Alignment(-0.8796349167823792, -0.14072027802467346),
            end: Alignment(0.14072026312351227, -0.14246316254138947),
            colors: notSelected
                ? [
                    Color.fromRGBO(56, 144, 240, 1),
                    Color.fromRGBO(72, 179, 245, 1)
                  ]
                : [
                    Color.fromRGBO(255, 255, 255, 1),
                    Color.fromRGBO(255, 255, 255, 1)
                  ]),
      ),
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            categoryname,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: notSelected
                    ? Color.fromRGBO(255, 255, 255, 1)
                    : Color.fromRGBO(186, 186, 186, 1),
                fontSize: 12,
                fontWeight: FontWeight.normal,
                height: 1),
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
    _selectedIndex = index;
  });
  }
}
