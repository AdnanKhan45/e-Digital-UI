import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

int _navIndex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40.0,
          ),
          Center(
            child: Text(
              "Men",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
          SizedBox(
            height: 38.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Icon(Icons.arrow_back),
              ),
              Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 18.0,
                  ),
                  Icon(Icons.mail_outline),
                  SizedBox(width: 10.0),
                ],
              )
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            width: 260,
            height: 320,
            child: PageView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(20.0)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 75.0, top: 150.0),
                        child: Text(
                          "New\nArrivals",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 35.0,
          ),
          BottomNavigationBar(
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.grey,
            currentIndex: _navIndex,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.mic_none), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.menu), label: ""),
            ],
            fixedColor: Colors.deepOrange,
            onTap: (index) {
              setState(() {
                _navIndex = index;
              });
            },
          )
        ],
      ),
    );
  }
}
