

import 'package:flutter/material.dart';
import '../screens/NoticeModalScreen.dart';

class UserAgreement extends StatefulWidget {
  const UserAgreement({Key? key}) : super(key: key);

  @override
  UserAgreementState createState() => UserAgreementState();
}

class UserAgreementState extends State<UserAgreement> {

  // 여기에 스테이트 넣기
  Map<String, bool> checkList = {
    'ToS1': false,
    'ToS2': false,
    'ToS3': false,
  };

  Map checkText = {
    'ToS1': '동의항목1',
    'ToS2': '동의항목2',
    'ToS3': '동의항목3',
  };

  checkListChange(key,value,{option=false}){
    if(checkList.containsKey(key)){
      setState(() {
        checkList[key] = value;
      });

    }else{
      if(option=='append'){
        setState(() {
          checkList[key] = value;
        });
      }else{
        print('Error 존재하지 않는 key ('+key+') 값에 value '+ value +' 대입 *option'+option);
      }
    }
  }

  bool testFalse = false;
  @override

  Widget build(BuildContext context) {

    print(checkList["ToS1"]== testFalse);
    print('테스트');
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 700,
        //color: Colors.blue,
        margin: EdgeInsets.fromLTRB(30,60,30,30),

        child : Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child:  Text('고객님 \n환영합니다',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Column(
                children: <Widget>[
                  CheckBoxlist( innerText : checkText["ToS1"], isChecked : checkList['ToS1'], listChange : checkListChange, indexId :'ToS1'),
                  CheckBoxlist( innerText : checkText["ToS2"], isChecked : checkList['ToS2'], listChange : checkListChange, indexId :'ToS2'),
                  CheckBoxlist( innerText : checkText["ToS3"], isChecked : checkList['ToS3'], listChange : checkListChange, indexId :'ToS3'),
                ]
            ),

          ],
        )
    );
  }
}



class CheckBoxlist extends StatelessWidget {
  const CheckBoxlist({Key? key, this.innerText, this.isChecked, this.listChange, this.indexId}) : super(key: key);
  final innerText;
  final isChecked;
  final listChange;
  final indexId;


  @override
  Widget build(BuildContext context) {
    print(isChecked);
    return Container(
      child : Row(
        children: [
          Checkbox(
            value: isChecked, //처음엔 false
            onChanged: (bool? value) {
              // 여기에 반환 구문 만들기
              listChange(indexId,!isChecked);
            },
          ),
          Text(innerText,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),

          TextButton(
            child: Text('약관 확인'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NoticeModalScreen()),
              );

            },
          ),

        ],
      )
    );
  }
}

//
// class CheckBoxlist extends StatefulWidget {
//   const CheckBoxlist({Key? key, this.innerText}) : super(key: key);
//   final innerText;
//
//   @override
//   _CheckBoxlistState createState() => _CheckBoxlistState();
// }
//
// class _CheckBoxlistState extends State<CheckBoxlist> {
//   bool isChecked = false;
//   String checkText = "안녕하세요";
//
//   @override
//   Widget build(BuildContext context) {
//     // UserAgreementState UserAgreement = context.findAncestorStateOfType<UserAgreementState>();
//     return Container(
//       child : Row(
//         children: [
//           Checkbox(
//             value: isChecked, //처음엔 false
//             onChanged: (bool? value) { //value가 false -> 클릭하면 true로 변경됨(두개 중 하나니까)
//               setState(() {
//                 isChecked = value!; //true가 들어감.
//               });
//             },
//           ),
//           Text(innerText,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),)
//         ],
//       )
//     );
//   }
// }
