import 'package:flutter/material.dart';

class BigPosterInHomeScreen extends StatelessWidget {
  List<Image> posters = [];
  BigPosterInHomeScreen({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        height: 500,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/EnolaHolmes2.jpg'),
            fit: BoxFit.contain,
          ),
        ),
      ),
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextButton(
                onPressed: () {},
                child: const Icon(Icons.add, color: Colors.white)),
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.red,
              ),
              child: TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(Icons.play_arrow, color: Colors.white),
                      Text('Play', style: TextStyle(color: Colors.white)),
                    ],
                  )),
            ),
            //a circle button
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.info, color: Colors.black),
              ),
            )
          ],
        ),
      )
    ]));
  }
}
