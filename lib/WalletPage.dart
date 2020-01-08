import 'package:flutter/material.dart';

void main()=>runApp(WalletPage());

class WalletPage extends StatefulWidget {
  const WalletPage({Key key}) : super(key: key);

  @override
  _WalletPageState createState() => _WalletPageState();
}

double _radius=0;
double _height=100;
bool _state=false;
double _fontSize=60;

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {




    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity, child:Column(
        children: <Widget>[Spacer(),Column(
          children: <Widget>[
            Container(padding: EdgeInsets.only(top: 20),child:Text('Total Balance',style: TextStyle(color: Colors.white70,fontSize: 15),)),
            Container( padding: EdgeInsets.only(top: 3,bottom: 14),child:Text('\$520',style: TextStyle(color: Colors.white,fontSize: _fontSize,fontWeight: FontWeight.bold),)),
            Row(children: <Widget>[Spacer(),
            Container(padding: EdgeInsets.only(right: 15),child:
            FlatButton(onPressed:()=>print('transfer'),child: Text('Transfer',style: TextStyle(color: Colors.black87),),color: Colors.white70,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30),))),

            Container(padding:EdgeInsets.only(right: 15),child: FlatButton(onPressed:()=>print('transfer'),child: Text('Accounts',style: TextStyle(color: Colors.black87),),color: Colors.white70,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30),))),
            FlatButton(onPressed:()=>print('transfer'),child: Text('Request',style: TextStyle(color: Colors.black87),),color: Colors.white70,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30),)),
            Spacer(),

            ],)
          ,],
        ),Spacer(),
          AnimatedContainer(curve: Curves.linearToEaseOut,duration: Duration(milliseconds: 700),padding: EdgeInsets.only(top: 40,left: 40,right: 40,bottom: 30),decoration:BoxDecoration( color: Color.fromRGBO(255, 255, 255,10),borderRadius: BorderRadius.only(topLeft: Radius.circular(_radius),topRight: Radius.circular(_radius))),child: Text('History',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color.fromRGBO(0, 0, 0, 70)),),height:_height,width: double.infinity,),
        ],
      ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.01, 0.6, 0.7, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Colors.black87,
              Colors.deepOrange[800],
              Colors.deepOrange[400],
              Colors.deepOrange[300],
            ],
          ),
        ),
      ),floatingActionButton: FloatingActionButton(child: Icon(_state? Icons.keyboard_arrow_down : Icons.more_horiz),onPressed:(){setState((){if(_state==false){_height=500;_radius=45;_fontSize=50;_state=true;}else{_height=100;_radius=0;_state=false;_fontSize=60;}});}),

    );
  }
}
