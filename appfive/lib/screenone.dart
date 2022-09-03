import 'package:flutter/material.dart';

import 'main.dart';

class screenone extends StatefulWidget {
  screenone({Key? key}) : super(key: key);

  @override
  State<screenone> createState() => _screenoneState();
}

class _screenoneState extends State<screenone> {
  bool Checkboxamman = false;
  bool CheckboxIrbid = false;
  bool Checkboxmafreq = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(
        children: [
          Text(
            "which city you visited before ?",
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
          CheckboxListTile(
              title: Text("amman"),
              value: Checkboxamman,
              onChanged: (val) {
                setState(() {
                  Checkboxamman = val!;
                });
              }),
          CheckboxListTile(
              title: Text("Irbid"),
              value: CheckboxIrbid,
              onChanged: (val) {
                setState(() {
                  CheckboxIrbid = val!;
                });
              }),
          CheckboxListTile(
              title: Text("Mafraq"),
              value: Checkboxmafreq,
              onChanged: (val) {
                setState(() {
                  Checkboxmafreq = val!;
                });
              }),
          ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.pop(context, MaterialPageRoute(
                  builder: (context) {
                    return MyApp();
                  },
                ));
              });
            },
            child: Text("go back to the home page"),
          )
        ],
      ),
    );
  }
}
