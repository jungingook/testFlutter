import 'package:flutter/material.dart';
import '../widgets/UserAgreement.dart';

class AgreementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child : Container(
          color : Colors.white,
          child : Column (
            children: <Widget>[
              Flexible(
                  flex: 8,
                  child: UserAgreement(),
              ),
              Flexible(
                  flex: 2,
                  child:Padding(
                      padding: EdgeInsets.all(30),
                      child: ElevatedButton.icon(
                        onPressed: () { },
                        label: Text('약관 동의',style: TextStyle(fontFamily: 'Pretendard',fontSize: 25, fontWeight: FontWeight.w600),),
                        icon: Icon(Icons.add, size: 18),
                        style: ElevatedButton.styleFrom(

                            primary: Colors.blue, // background
                            onPrimary: Colors.white, // foreground
                            fixedSize: Size(MediaQuery.of(context).size.width, 50)
                        ),
                      )
                  )

              ),

            ],
          ),
        ),
      );
  }
}