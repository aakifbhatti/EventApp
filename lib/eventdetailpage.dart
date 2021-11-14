import 'package:flutter/material.dart';

import 'contants.dart';
import 'data.dart';

class EventDetails extends StatelessWidget {
  final EventDataModel eventinfo;

  const EventDetails({Key? key, required this.eventinfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f6fe),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: <Widget>[
              //Back Button
             
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //EVENT IMAGE WITH GRADIENT
                  Stack(children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            eventinfo.urlImage,
                            
                          ),
                        ),
                      ),
                      height: 350.0,
                    ),
                    Container(
                      height: 355.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          gradient: LinearGradient(
                            colors: [
                              Color(0x00f2f6fe),
                              Color(0x7ff2f6fe),
                              Color(0xffeff3fb)
                            ],
                            stops: [
                              0.2374998778104782,
                              0.6802082061767578,
                              1
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            
                            // scale: undefined,
                          )),
                    ),
                     Positioned(
                
                  top: 25,
                  left: 23,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 48,
                      width: 48,
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
                          image: AssetImage('assets/Arrow - Left.png'),
                          scale: 0.9,
                        ),
                      ),
                    ),
                  )),
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(left: 23,right: 23),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(eventinfo.eventName,
                            style: TextStyle(
                              color: Color(0xff070a15),
                              fontSize: 32,
                              fontWeight: FontWeight.w800,
                              fontStyle: FontStyle.normal,
                            )),
                        SizedBox(
                          width: 8,
                        ),
                        Text(eventinfo.eventType,
                            style: TextStyle(
                              color: Color(0xff3a94f1),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23,right: 23),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/Calendar.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("August 19, 2021",
                            style: TextStyle(
                              color: Color(0xff727272),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            )),
                        SizedBox(width: 28),
                        Image.asset("assets/clock-icon.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("8:00 AM - 10:00 AM",
                            style: TextStyle(
                              color: Color(0xff727272),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  Padding(
                   padding: const EdgeInsets.only(left: 23,right: 23),
                    child: Text("Description",
                        style: TextStyle(
                          color: Color(0xff070a15),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23,right: 23),
                    child: Text(
                        "This event will be held at St Josph College on 19 Aug, 2021 which will start from 8:00 AM to 10:0 ....",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0xff2e2e2e),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23,right: 23),
                    child: Text("Place",
                        style: TextStyle(
                          color: Color(0xff070a15),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23,right: 23),
                    child: Container(
                        width: 329,
                        height: 154,
                        decoration: new BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(12))),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 28, vertical: 6),
        height: 75,
        decoration: new BoxDecoration(
          color: Color(0xffffffff),
          boxShadow: [
            BoxShadow(
                color: Color(0x3f3f3f3f),
                offset: Offset(5, 5),
                blurRadius: 35,
                spreadRadius: 0)
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 46,
              width: 46,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                child: Image(image: AssetImage("assets/Heart.png")),
              ),
            ),
            SizedBox(
              width: 18,
            ),
            Container(
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
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 72, vertical: 14),
                child: Text('Register Now',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0.18,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
