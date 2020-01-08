import 'package:flutter/material.dart';
import 'ListItem.dart';

class JobsPage extends StatelessWidget {
  const JobsPage({Key key}) : super(key: key);

  void func() {}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 115,
            color: Color.fromRGBO(45, 50, 50, 20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      child: Icon(
                        Icons.location_on,size: 30 ,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.only(left: 15, right: 5, top: 7),
                    ),
                    Spacer(),
                    Container(
                        padding: EdgeInsets.only(top: 13),
                        child: AutoSizeText(
                          '1031 Franklin Street, San F...',
                          style: TextStyle(color: Colors.white,fontSize: 16),
                        )),
                    Spacer(),
                    Container(
                        padding: EdgeInsets.only(right: 15, left: 15, top: 7),
                        child: RaisedButton(
                          onPressed: func,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.only(left: 35, right: 35),
                          color: Colors.deepOrange,
                          elevation: 10,
                          child: Text(
                            'CHANGE',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
                  ],
                ),
                Container(child: FlatButton(onPressed: null,child: Image(image: AssetImage('assets/filters.png',),width: 150,height: 50,),),),
              ],
            ),
          ),
          Expanded(child: listItem(),

            //child: ListView
//              (
//              children: <Widget>
//              [
//
//                ListTile(leading: Icon(Icons.map), title: Text('Map')),
//                ListTile(leading: Icon(Icons.map), title: Text('Map')),
//                ListTile(leading: Icon(Icons.map), title: Text('Map')),
//                ListTile(leading: Icon(Icons.map), title: Text('Map')),
//                ListTile(leading: Icon(Icons.map), title: Text('Map')),
//                ListTile(leading: Icon(Icons.map), title: Text('Map')),
//                ListTile(leading: Icon(Icons.map), title: Text('Map')),
//                ListTile(leading: Icon(Icons.map), title: Text('Map')),
//                ListTile(leading: Icon(Icons.map), title: Text('Map')),
//                ListTile(leading: Icon(Icons.map), title: Text('Map')),
//                ListTile(leading: Icon(Icons.map), title: Text('Map')),
//                ListTile(leading: Icon(Icons.map), title: Text('Map')),
//                ListTile(leading: Icon(Icons.map), title: Text('Map')),
//                ListTile(leading: Icon(Icons.map), title: Text('Map')),
//              ],
//
//            ),
          ),
        ],
      ),
    );
  }
}
