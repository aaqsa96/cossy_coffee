import 'package:flutter/material.dart';

class HomeClass {
  int id;
  String image;
  String name;
  String price;
  HomeClass({this.id, this.name, this.image, this.price});

///////////////////////////
//   static List<HomeClass> _homeClass = [
//     HomeClass(
//         name: 'Bonten fact Coffee',
//         image: 'assets/images/bonton coffee.jpg',
//         price: '20.00'),
//     HomeClass(
//         image: 'assets/images/cookies.jpg',
//         name: 'Piece of classic cookies',
//         price: '22.00'),
//     HomeClass(
//       image: 'asstes/images/chunk coffee.jpg',
//       name: 'Repeat chunks coffee',
//       price: '19.00',
//     ),
//     HomeClass(
//       image: 'asstes/images/sandwhich.jpg',
//       name: 'Suffered Alt Sandwhiches',
//       price: '16.00',
//     )
//   ];
//   List<HomeClass> get homeClass_list {
//     return [..._homeClass];
//   }
}
