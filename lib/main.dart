import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'OnBoarding.dart';
import 'package:shared_preferences/shared_preferences.dart';


int onBoard;



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    getIntValuesSF();
    print(onBoard);

    if(onBoard==1000)
    return HomePage();
    else
      return OnBoard();
  }

  getIntValuesSF() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return int
    onBoard = (prefs.getInt('intro') ?? 0);
    if(onBoard==null)
      onBoard=0;
    onBoard = prefs.getInt('intro');
  }
}
