import 'package:flutter/material.dart';
import 'SecondPage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String UserName = "";
  String Pass = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (text) {
                setState(() {
                  UserName = text;
                });
              },
              decoration: InputDecoration(
                icon: Icon(Icons.send),
                hintText: 'Enter Your Username',
                counterText: UserName.length.toString() + ' Characters',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              onChanged: (text) {
                setState(() {
                  Pass = text;
                });
              },
              decoration: InputDecoration(
                icon: Icon(Icons.send),
                hintText: 'Password',
                counterText: Pass.length.toString() + ' Characters',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                setState(
                  () async {
                    // var Result = Navigator.push(context, route)
                    var reslut = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondPage(
                          Username: UserName,
                          Pass: Pass,
                        ),
                      ),
                    );
                    if (reslut == true) {
                      print("Login Successfully.");
                    } else {
                      print("Login Not Successfully.");
                    }
                    ;
                  },
                );
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
