import 'dart:ui';
import 'package:e_digital_shop/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

bool isSelected = true;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: DrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Icon(Icons.filter_alt_outlined)],
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 10.0),
            child: Text(
              "Feed",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSelected = true;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 35,
                      decoration: BoxDecoration(
                          color: isSelected == true ? Colors.white : Colors.black,
                          border: Border.all(width: 1.5, color: isSelected == true ? Colors.white : Colors.white),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Center(
                        child: Text(
                          "ALL",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: isSelected == true ? Colors.black : Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSelected = false;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 35,
                      decoration: BoxDecoration(
                          color: isSelected == false ? Colors.white : Colors.black,
                          border: Border.all(width: 1.5, color: isSelected == false ? Colors.white : Colors.white),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Center(
                        child: Text(
                          "FAVOURITES",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: isSelected == false ? Colors.black : Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(itemCount: 4,itemBuilder: (context, index) {
              return listItem();
            }),
          )
        ],
      ),
    );
  }

  Widget listItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(4.0)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "symmetrical tribal exploration [prototype]",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "Posted June 16, 2021, 11:44 AM",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey[700]),
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 12.0),
              width: 40,
              height: 40,
              decoration: BoxDecoration(color: Colors.grey[800], shape: BoxShape.circle),),
            SizedBox(
              width: 6.0,
            ),
            Text("name", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox(width: 235,),
            Text("1 vote", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
          ],
        ),
      ],
    );
  }
}
