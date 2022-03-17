import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/StartScreen.dart';
import './screens/AgreementScreen.dart';
import '../screens/NoticeModalScreen.dart';
//
// void main() {s
//   runApp(const MyApp());
// }

void main() {
  runApp(ChangeNotifierProvider(
    create: (c) => appStore(),
    child: MaterialApp(
      title: 'Navigation Basics',
      theme: ThemeData(
        fontFamily: 'Pretendard',
      ),
      // home: StartScreen(),
      home: App()
    ),
  ));
}

class appStore extends ChangeNotifier{
  var mainPage = AgreementScreen();
  var name = 1;

  pageChange(page){
    switch (page) {
      case 'AgreementScreen':
        mainPage = AgreementScreen();
        break;
      case 'OPEN':
        mainPage = AgreementScreen();
        break;
      case 'APPROVED':
        mainPage = AgreementScreen();
        break;

      default:
    }
    notifyListeners();
  }
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return context.watch<appStore>().mainPage;
  }
}

//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar : AppBar(
//           title: Text('앱임')
//         ),
//         body: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           // crossAxisAlignment: CrossAxisAlignment.center,
//
//           children: [Text('안녕')],
//         ),
//         bottomNavigationBar: BottomAppBar(
//           child: SizedBox (
//             height: 50,
//             child : Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Icon(Icons.call),
//                 Icon(Icons.message),
//                 Icon(Icons.contact_page),
//               ],
//             )
//           )
//
//       )
//       // Image.asset('assets/crown.png')
//
//     ));
//   }
// }
//


