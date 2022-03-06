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
          alignment: Alignment.center,
          children: [_getCard()],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 300,
      height: 200,
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
}
