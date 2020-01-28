import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/country_pickers.dart';
import 'JobsPage.dart';

double widths;

class MapDialog extends StatefulWidget {
  @override
  _MapDialogState createState() => _MapDialogState();

}

class _MapDialogState extends State<MapDialog> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    widths = MediaQuery.of(context).size.width;

    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[Container(height: 20,width:700,decoration: BoxDecoration(color: Color.fromRGBO(250, 100, 60,40)),),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[


                Text('Select Nationality'),
                CountryPickerDropdown(

                  initialValue: 'in',
                  itemBuilder: _buildDropdownItem,
                  onValuePicked: (Country country) {
                    print("${country.name}");
                  },
                ),
                Container(
                  child: Text("Tell us how you became Homeless ?"),
                  width: double.infinity,
                  padding:
                      EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: TextFormField(),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: TextFormField(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text("Submit"),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                      }
                    },
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
Widget _buildDropdownItem(Country country) => Container(
  child: Row(
    children: <Widget>[
      CountryPickerUtils.getDefaultFlagImage(country),
      SizedBox(
        width: 8.0,
      ),
      Container(width: widths*0.5,child: Text("${country.name}",softWrap: false,overflow: TextOverflow.ellipsis,)),
    ],
  ),
);

