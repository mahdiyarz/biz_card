import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Biz Card"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _getCard(),
            _getAvatar(),
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 300,
      height: 200,
      margin: const EdgeInsets.all(50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.deepOrangeAccent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "mahDyar ArbabZ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const Text("m.arbabzi@gmail.com"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.location_history),
              Text("Tiwter: @mahdiyarz")
            ],
          ),
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.deepOrangeAccent,
          width: 2,
        ),
        image: const DecorationImage(
          image: NetworkImage("https://picsum.photos/300/300"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
