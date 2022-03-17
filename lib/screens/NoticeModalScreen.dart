import 'package:flutter/material.dart';

class NoticeModalScreen extends StatelessWidget {
  String _Title = '안내';
  String _Notice = '2';

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: MediaQuery.of(context).size.width,
        // height: 700,
        color: Colors.white,
        margin: EdgeInsets.all(30),

        child : Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30),
              child:  Text(_Title,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView (
                child: Text(_Notice,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

          ],
        )
    );
  }
}