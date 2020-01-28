import 'package:flutter/material.dart';






List<Map<String, String>> getCity() {
  var items = [
    {'Code': 'SF', 'Address': '548 market, San Francisco'},
    {'Code': 'RM', 'Address': 'Coronado, Richmond'},
    {
      'Code': 'SF',
      'Address': '22nd St., San Francisco',
    },
    {
      'Code': 'OA',
      'Address': 'Oakland, San Francisco',
    }
  ];
  return items;
}

Map<String,Color> mColors={'SF':Colors.purple,'OA':Colors.orange,'RM':Colors.teal,'CA':Colors.pink};



List<String> offerText() {
  var items = [
    'It would be great if someone of you could repair my car, someone who has been a mechanic before. I have a nice guest room where you can spend night in return. ',
    'I require someone who can deliver my stuff to Fremont. License, atleast 5 year driving experience. Can stay at my home for a day.',
    'Need someone to help me shift my baggage for 2 days. Food, place to stay is upon me.',
    'Require someone to take care of my house lawn. Few hours work.'
  ];
  return items;
}

List<Map<String, String>> getOffer() {
  var items = [
    {'Stay': 'One night stay', 'Money': '\$20-30'},
    {'Stay': 'One night stay', 'Money': '\$50'},
    {'Stay': 'One night stay', 'Money': '-'},
    {'Stay': 'One night stay', 'Money': '\$30'},
  ];
  return items;
}


Widget listItem() {
  var cityList = getCity();
  var statement = offerText();
  var offer = getOffer();


  var listView = ListView.builder(
    itemCount: cityList.length,
    itemBuilder: (context, index,) {
      return InkWell(onTap:(){print('tapped');},splashColor: Colors.deepOrangeAccent,child: Container(padding: EdgeInsets.all(20),height: 180,

        decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 0),border: Border.all(color: Colors.black45,width: 0.5)),
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(margin: EdgeInsets.only(right: 20),child: CircleAvatar(radius: 40,backgroundColor: mColors[cityList[index]['Code']],child: Text(cityList[index]['Code'],style: TextStyle(fontSize: 25,color: Colors.white),))),
              SizedBox(width: 100,height: 40,child:Padding(
                padding: const EdgeInsets.only(top:8.0,left: 6.0),
                child: Text(cityList[index]['Address'],style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15,),),
              ),),],
            ),
            Spacer(),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 250,height: 110,child: Container(margin: EdgeInsets.only(right: 10),child: Text(statement[index],style: TextStyle(fontSize: 16),),),),
                Row(
                  children: <Widget>[
                    Text('Offers:  ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.deepOrange),),

                    Text(offer[index]['Stay'],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black),),
                    Text(', ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black),),
                    Text(offer[index]['Money'],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black),)
                  ],
                )
              ],
            ),
          ],
        ),
      ),);
    },
  );
  return listView;
}
