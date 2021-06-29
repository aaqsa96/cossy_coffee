import 'package:cosy_coffee/constant.dart';
import 'package:cosy_coffee/models/home_page_model.dart';
import 'package:cosy_coffee/screens/items_screens.dart/coffee_screen.dart';
import 'package:cosy_coffee/screens/items_screens.dart/cookies_screen.dart';
import 'package:cosy_coffee/widgets/bottombar.dart';
import 'package:flutter/material.dart';
import '../models/home_page_model.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<HomeClass> _homeClass = [
    HomeClass(
        id: 1,
        name: 'Bonten fact Coffee',
        image: 'assets/images/bonton coffee.jpg',
        price: '20.00'),
    HomeClass(
        id: 2,
        image: 'assets/images/cookies.jpg',
        name: 'Piece of classic cookies',
        price: '22.00'),
    HomeClass(
        id: 3,
        image: 'assets/images/donouts.jpg',
        name: 'Yumm\'s Donuts',
        price: '23.00'),
    HomeClass(
      id: 3,
      image: 'assets/images/chunk coffee.jpg',
      name: 'Repeat chunks coffee',
      price: '19.00',
    ),
    HomeClass(
      id: 4,
      image: 'assets/images/sandwhiches.jpg',
      name: 'Suffered Alt Sandwhiches',
      price: '16.00',
    ),
    HomeClass(
        id: 2,
        image: 'assets/images/bread.jpg',
        name: 'Piece of bread',
        price: '22.00'),
  ];
  @override
  void initState() {
    super.initState();
    List<HomeClass> _homeClass = [];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: creamColor,
      appBar: AppBar(
        backgroundColor: creamColor,
        title: Text(
          'Favourites',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 30, left: 15),
          child: GridView.builder(
              shrinkWrap: true,
              itemCount: _homeClass.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 40,
                crossAxisSpacing: 5,
              ),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          if (_homeClass[index].id == 1) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CoffeeScreen()));
                          } else if (_homeClass[index].id == 2) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CookiScreen()));
                          }
                        },
                        child: Card(
                          //color: Colors.blue,
                          child: Container(
                            //color: Colors.amber,
                            height: 150,
                            width: 150,
                            // padding: EdgeInsets.all(18),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                            ),
                            // child: Hero(
                            //   tag: "$_homeClass.id",
                            //   child: Image.asset(
                            //     _homeClass[index].image,
                            //     fit: BoxFit.cover,
                            //   ),
                            // ),
                            child: Card(
                                child: Image.asset(
                              _homeClass[index].image,
                              fit: BoxFit.cover,
                            )),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20 / 4),
                      child: Text(
                        _homeClass[index].name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          color: buttonColor,
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                        child: Text("\$${_homeClass[index].price}"))
                  ],
                );
              }),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
