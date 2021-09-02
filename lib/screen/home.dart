import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KMUTNB TCT2RA'),
      ),
      body: Container(
        color: Colors.indigo[700],
        alignment: Alignment.center,
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 80,
              child: Text(
                "1234",
                style: TextStyle(
                  fontSize: 48,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
