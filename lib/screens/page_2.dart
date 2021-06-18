import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

int _navIndex = 0;

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
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
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                ),
                Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 20.0,
                    ),
                    Icon(Icons.mail_outline),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 65,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "\t\tMan\n\nWomen\n\nChildren",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
