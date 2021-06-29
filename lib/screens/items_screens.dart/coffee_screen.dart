import 'package:cosy_coffee/models/coffee_model.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constant.dart';

class CoffeeScreen extends StatefulWidget {
  @override
  _CoffeeScreenState createState() => _CoffeeScreenState();
}

class _CoffeeScreenState extends State<CoffeeScreen> {
  List<Coffee> _coffee = [
    Coffee(
      id: 1,
      name: 'Latte Coffee',
      image: 'assets/images/latt coffee.jpg',
      price: '10.00',
      desc: "Latte a coffee based drink made with expresso and steamed milk.",
    ),
    Coffee(
        id: 2,
        name: 'Cappuccino',
        image: 'assets/images/cuppachino.jpg',
        price: '16.00',
        desc:
            'It is made with single expresso shot and hot milk with the surface topped with foamed milk.'),
    Coffee(
        id: 3,
        name: 'Americano Coffee',
        image: 'assets/images/americano.jpg',
        price: '19.00',
        desc:
            'An Americano is an expresso based drink designed to resemble coffee brewed in drip filter.'),
    Coffee(
        id: 4,
        name: 'Doppio Coffee',
        image: 'assets/images/dippo coffee.jpg',
        price: '12.00',
        desc: 'Canterbury Coffee. A double expresso.'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: Vx.m20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Coffees"
                    .text
                    .xl4
                    .color(Colors.black)
                    .align(TextAlign.left)
                    .make(),
                "Hot Coffees".text.align(TextAlign.left).make(),
                /////
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1,
                  child: ListView.builder(
                    itemCount: _coffee.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Card(
                          elevation: 5,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            height: 140,
                            child: Wrap(
                              direction: Axis.vertical,
                              children: [
                                Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fitHeight,
                                          image: AssetImage(
                                              _coffee[index].image))),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 2, bottom: 2, left: 8, right: 4)),
                                Column(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      _coffee[index].name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    // Text(
                                    //   _coffee[index].desc,
                                    //   softWrap: false,
                                    //   overflow: TextOverflow.ellipsis,
                                    //   maxLines:1,
                                    // )
                                    // SizedBox(
                                    //   height: 30,
                                    // ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(70),
                                              color: buttonColor,
                                            ),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 8, horizontal: 18),
                                            child: Text(
                                                "\$${_coffee[index].price}")),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
