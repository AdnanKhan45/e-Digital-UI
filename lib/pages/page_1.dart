import 'package:flutter/material.dart';

class FerberPage extends StatelessWidget {
  const FerberPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 40.0,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 30,
                color: Colors.white,
                child: Center(
                  child: Text("Followers", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 30,
                color: Colors.white ,
                child: Center(
                  child: Text("Following", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15.0),
          height: 35,
          decoration: BoxDecoration(color: Colors.grey.withOpacity(.5), borderRadius: BorderRadiusDirectional.circular(10.0)),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
              hintText: "Search artists",
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return listItem();
            },
          ),
        )
      ],
    ));
  }
}

Widget listItem() {
  return Column(
    children: [
      Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
            width: 40,
            height: 40,
            decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dummy name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                "Dummy desc",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ],
          ),
          SizedBox(
            width: 160.0,
          ),
          Container(
            width: 65,
            height: 20,
            decoration:
                BoxDecoration(color: Colors.grey[300], border: Border.all(width: 1, color: Colors.black), borderRadius: BorderRadius.circular(3.0)),
            child: Center(
                child: Text(
              "Remove",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
        ],
      ),
    ],
  );
}
