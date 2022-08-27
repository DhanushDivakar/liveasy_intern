import 'package:flutter/material.dart';

class Waves extends StatelessWidget {
  const Waves({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
              child: Container(
                child: Image.asset('assets/Vector.png'),
              ) )
        ],
      ),
    );
  }
}
