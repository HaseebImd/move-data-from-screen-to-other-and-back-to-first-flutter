import 'package:flutter/material.dart';
import 'FirstPage.dart';

class SecondPage extends StatefulWidget {
  // const SecondPage({Key? key}) : super(key: key);
  SecondPage({required this.Username, required this.Pass});
  String Username, Pass;
  late bool Result;
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  void MyFunc() {
    if (widget.Username == "BSCS" && widget.Pass == "12345") {
      widget.Result = true;
    } else {
      widget.Result = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.Username, ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  MyFunc();
                  Navigator.pop(context, widget.Result);
                });
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
