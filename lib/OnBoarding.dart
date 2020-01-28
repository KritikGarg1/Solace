import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:geolocator/geolocator.dart';
import 'JobsPage.dart';
Position position;
class OnBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return new MaterialApp(theme:ThemeData(accentColor: Colors.deepOrange),home: NewOnBoard());}}

class NewOnBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    AssetImage assetImage1 = AssetImage('assets/vector_intro.jpg');
    AssetImage assetImage2 = AssetImage('assets/get_started_img.jpg');
    AssetImage assetImage3 = AssetImage('assets/logo_big.jpg');
    Image v1 = Image(image: assetImage1);
    Image v2 = Image(image: assetImage2);
    Image v3 = Image(image: assetImage3);
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 90),
                  child: v1,
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 100, top: 60),
                  margin: EdgeInsets.only(left: 130, right: 130),
                  child: v3,
                ),
                Spacer(),
                Container(
                    child: Text(
                      "Help eradicate homelessness",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'Quicksand'),
                    )),
                Container(
                  margin: EdgeInsets.all(40),
                  padding: EdgeInsets.only(bottom: 10),
                  child: FlatButton(
                      onPressed: () async{
                        position= await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high); print(position);
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        onBoard = (prefs.getInt('intro') ?? 0);
                        onBoard=1000;
                        prefs.setInt('intro', onBoard);
                        print(prefs.getInt('intro'));
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: v2),
                )
              ],
            )));
  }
}
