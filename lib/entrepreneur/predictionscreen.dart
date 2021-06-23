import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'flask.dart';

class PridictionScreen extends StatefulWidget {
  PridictionScreen({Key key}) : super(key: key);

  @override
  _PridictionScreenState createState() => _PridictionScreenState();
}

class _PridictionScreenState extends State<PridictionScreen> {
  String url = '';
  var data;

  double sl = 0;
  double sw = 0;
  double pl = 0;
  double pw = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Iris Predictor'),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70.0, horizontal: 40.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextField(
                  onChanged: (val) {
                    this.sl = double.parse(val);
                  },
                  decoration: InputDecoration(
                      hintText: 'Sepal Length', alignLabelWithHint: true),
                ),
                TextField(
                  onChanged: (val) {
                    this.sw = double.parse(val);
                  },
                  decoration: InputDecoration(
                      hintText: 'Sepal Width', alignLabelWithHint: true),
                ),
                TextField(
                  onChanged: (val) {
                    this.pl = double.parse(val);
                  },
                  decoration: InputDecoration(
                      hintText: 'Petal Length', alignLabelWithHint: true),
                ),
                TextField(
                  onChanged: (val) {
                    this.pw = double.parse(val);
                  },
                  decoration: InputDecoration(
                      hintText: 'Petal Width', alignLabelWithHint: true),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  onPressed: () async {
                    //String featureString = makeStringOfFeatures(sl, sw, pl, pw);
                    // var data = await getData('http://10.0.2.2:5000/api?query=' +featureString);
                    var data = await getData(
                        'http://10.0.2.2:5000/api?sl=$sl&sw=$sw&pl=$pl&pw=$pw');
                    var decodedData = jsonDecode(data);
                    showAlertDialog(context, decodedData['query']);
                  },
                  child: Text(
                    'Predict name!',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context, String name) {
    // set up the button
    Widget okayButton = FlatButton(
      child: Text("Okay!"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Flower"),
      content: Text("The name of flower is: $name"),
      actions: [
        okayButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  String makeStringOfFeatures(sl, sw, pl, pw) {
    return '$sl $sw $pl $pw';
  }
}
