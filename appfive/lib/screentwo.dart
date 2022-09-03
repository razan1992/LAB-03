import 'package:appfive/main.dart';
import 'package:flutter/material.dart';

class screentwo extends StatefulWidget {
  screentwo({Key? key}) : super(key: key);

  @override
  State<screentwo> createState() => _screentwoState();
}

class _screentwoState extends State<screentwo> {
  String selecteditem = "kia";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(
        children: [
          Container(
            child: Text(
              "Choose your Car",
              style: TextStyle(
                  fontSize: 40, color: Color.fromARGB(255, 0, 21, 212)),
            ),
          ),
          DropdownButton(
              dropdownColor: Color.fromARGB(255, 72, 169, 248),
              items: ["kia", "hunday", "marceds"]
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text("$e"),
                      ))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  selecteditem = val.toString();
                });
              },
              value: selecteditem),
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
