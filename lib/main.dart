import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String clickBtn = "click";
Color clickBtnColor = Colors.blue;
double conHeight = 80;
double conWidth = 80;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple,
          title: Text(
            "Bipul Sarkar",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      conHeight = 300;
                      conWidth = 300;
                    });
                  },
                  onDoubleTap: (){
                    setState(() {
                      conHeight = 80;
                      conWidth = 80;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 4000),
                    height: conHeight,
                    width: conWidth,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image/person.jpg"),
                        fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(180),
                      border: Border.all(color: Colors.black54,width: 2)
                    ),
                  ),
                ),
                RaisedButton(
                    color: clickBtnColor,
                    child: Text(
                      clickBtn,
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        clickBtn = "clicked";
                        clickBtnColor = Colors.cyan;
                      });
                    }),
                Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSE_2z0JGSt1lS30w3WoY5xZunW-TC6UHlmMljda98-PRQ8MPtuRoDSWpeYmOe4WMO9TRw&usqp=CAU"),
                Image.asset("assets/image/person.jpg")
              ],
            ),
          ),
        ));
  }
}
