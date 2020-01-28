import 'package:flutter/material.dart';
import 'MapDialog.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {


  void fun() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: MapDialog()
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    String name = 'John Potter';
    String address = '1031 Franklin Street, San Francisco';
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(
                            left: 30, bottom: 10, right: 20, top: 35),
                        child: Text(
                          name,
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 35),
                        )),
                    Container(
                      child: Text(
                        address,
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                      width: 220,
                      height: 40,
                      padding: EdgeInsets.only(left: 30),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 30, right: 30),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile_pic.jpg'),
                    radius: 40,
                  ),
                ),
              ],
            ),
            Divider(
              height: 35,
            ),
            InkWell(
                onTap: fun,
                child: Container(
                  height: 50,
                  color: Color.fromRGBO(190, 90, 90, 80),
                  child: Row(
                    children: <Widget>[
                      Text('     '),
                      Icon(Icons.warning, color: Colors.white),
                      Text(
                        '    You need to fill a form to verify yourself',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                )),
            Row(
              children: <Widget>[
                Text('    '),
                Container(
                    width: 150,
                    child: RaisedButton(
                        onPressed: fun,
                        child: Text('Verify Now'),
                        color: Color.fromRGBO(180, 180, 180, 20))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
