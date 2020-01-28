import 'package:flutter/material.dart';
import 'ListItem.dart';
import 'package:solace/OnBoarding.dart';
import 'package:geolocator/geolocator.dart';

String currentAddress='St. 53, San Francisco';


class JobsPage extends StatefulWidget {
  const JobsPage({Key key}) : super(key: key);

  @override
  _JobsPageState createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {

  getAddressFromLatLng() async {
    try {
      List<Placemark> p = await Geolocator().placemarkFromCoordinates(
          position.latitude, position.longitude);

      Placemark place = p[0];

      setState(() {
        currentAddress =
        "${ place.subLocality}, ${ place.locality}, ${ place.postalCode}, ${ place.country} ";
      });
    } catch (e) {
      print(e);
    }

  }

  @override
  void initState() {
    // TODO: implement initState
    getAddressFromLatLng();
    super.initState();
  }

  void func(){}



  @override
  Widget build(BuildContext context) {

    double widths = MediaQuery.of(context).size.width;


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

                    Container(width:widths*0.45,
                        padding: EdgeInsets.only(top: 13),
                        child: Text(
                          currentAddress,
                          style: TextStyle(color: Colors.white,fontSize: 15),
                          overflow: TextOverflow.fade,softWrap: false,maxLines: 1,

                        )),

                    Container(
                        padding: EdgeInsets.only(right: 15, left: 15, top: 7),
                        child: RaisedButton(
                          onPressed: func,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.only(left: widths*0.09, right: widths*0.09),
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
          ),
        ],
      ),
    );
  }
}
