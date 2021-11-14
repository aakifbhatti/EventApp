import 'package:flutter/material.dart';

class EventDataModel {
  late int position;
  late String eventName;
  late String eventType;
  late String eventDate;
  late String eventAddress;
  late String urlImage;

  EventDataModel(this.position,
      {required this.eventName,
      required this.eventType,
      required this.eventAddress,
      required this.eventDate,
      required this.urlImage});
}

List<EventDataModel> events =[

  EventDataModel(1,
   eventName: 'Swimming', 
   eventType: 'Sports Event', 
   eventAddress: 'St Bona School, Karachi', 
   eventDate: '29 August, 2021',
   urlImage: 'https://images.unsplash.com/photo-1519315901367-f34ff9154487?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'
   ),
   EventDataModel(2,
   eventName: 'Singing', 
   eventType: 'Music Event', 
   eventAddress: 'St Bona School, Karachi', 
   eventDate: '12 September, 2021',
   urlImage: 'https://images.unsplash.com/photo-1597169428801-7c1adf2623bd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=778&q=80'
   ),
   EventDataModel(3,
   eventName: 'Painting', 
   eventType: 'Arts Event', 
   eventAddress: 'St Bona School, Karachi', 
   eventDate: '10 October, 2021',
   urlImage: 'https://images.unsplash.com/photo-1510832842230-87253f48d74f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'
   ),



];
