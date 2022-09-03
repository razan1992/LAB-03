import 'package:appfive/screenone.dart';
import 'package:appfive/screentwo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(
        children: [
          Container(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return screentwo();
                      },
                    ),
                  );
                });
              },
              child: Text(
                "go to the page 2",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return screenone();
                      },
                    ),
                  );
                });
              },
              child: Text(
                "go to the  page 1",
                style: TextStyle(fontSize: 30),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
