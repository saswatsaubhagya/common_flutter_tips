import 'package:common_flutter_tips/screens/welcome.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Tips"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text("hello"),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FlatButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "No",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Text(
                                "Yes",
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            child: Text("Dialog"),
          ),
          Divider(),
          RaisedButton(
            onPressed: () {
              _scaffoldKey.currentState.showSnackBar(
                SnackBar(
                  content: Text("Alert"),
                  backgroundColor: Colors.red,
                  elevation: 10.0,
                ),
              );
            },
            child: Text("Snackbar"),
          ),
          Divider(),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Welcome(
                    name: "Saswat",
                  ),
                ),
              );
            },
            child: Text("Navigation"),
          ),
          Divider(),
          RaisedButton(
            onPressed: () async {
              var selectedDate = await showDatePicker(
                context: context,
                lastDate: DateTime.now().add(Duration(days: 5)),
                firstDate: DateTime(DateTime.now().year - 10),
                initialDate: DateTime.now().add(Duration(days: 1)),
              );
              print(selectedDate);
            },
            child: Text("Date picker"),
          ),
        ],
      ),
    );
  }
}
