import 'package:flutter/material.dart';

class Workshop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          children: <Widget>[ 
            Positioned(
              top: -20,
              left: -30,
              child: Image.asset(
                "asset/image/orange-circle.png",
                width: size.width *0.1,
              ),
              ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "asset/image/logo.png",
                  width: size.width * 0.1,
                ),
                Text(
                  "Welcome to KMUTNB",
                  style: TextStyle(
                    color: Colors.amber[900],
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1481627834876-b7833e8f5570?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZWR1Y2F0aW9ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"
                  ),
                  width: size.width * 0.4,
                ),
                SizedBox(
                  height: 20,
                ),
             
            ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.amber[900],
              padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
             // padding: EdgeInsets.all(20),
              shape: StadiumBorder(),
            ),
            child: Text("LOGIN",
            style: TextStyle(fontSize: 16),
            ),
            onPressed: () {
              print("Hello KMUTNB");
            },
            ),
            SizedBox(
              height:20,
              ),
             ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.amber[900],
              padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
             // padding: EdgeInsets.all(20),
              shape: StadiumBorder(),
            ),
            child: Text("SignUp",
            style: TextStyle(fontSize: 16),
            ),
            onPressed: () {
              print("Good Luck KMUTNB");
       },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
