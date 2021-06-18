import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 340,
              color: Colors.grey,
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              width: 360,
              height: 50,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
              child: Center(
                child: Text(
                  "Buy",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            SizedBox(height: 8.0,),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("14 votes", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.grey[500]),),
                  Container(
                    child: Text("AMOR is the font of combines ancient Roman culture with a touch of hi-tech to give it a modern and edgy touch this typeface is only available for UPPERCASE.",overflow: TextOverflow.ellipsis, maxLines: 4, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
