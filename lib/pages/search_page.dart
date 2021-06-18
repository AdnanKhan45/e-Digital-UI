import 'package:e_digital_shop/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 15.0, bottom: 10.0),
            child: Text(
              "Discover",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
            ),
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
          SizedBox(
            height: 25.0,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  "Community",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
                ),
              ),
              SizedBox(
                width: 220,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  "See All",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return listItem();
                }),
          )
        ],
      ),
    );
  }

  Widget listItem() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 8.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(color: Colors.blueGrey, shape: BoxShape.circle),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dummy name",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        "Dummy Description, Description, Descriprtion Description",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800]),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, bottom: 4.0),
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.grey[800],
                  size: 15,
                ),
              ),
            ],
          ),
          Divider(color: Colors.grey[800],)
        ],
      ),
    );
  }
}
