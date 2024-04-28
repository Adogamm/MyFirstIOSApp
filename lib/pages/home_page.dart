import 'package:flutter/material.dart';
import 'package:hello_world/widgets/circle.dart';
import 'package:hello_world/widgets/icon_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    final double pinkSize = size.width*0.9;
    final double orangeSize = size.width*0.7;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: -(size.width*0.8) * 0.4,
              right: -(size.width*0.8) * 0.2,
              child: Circle(
                size: pinkSize,
                colors: const [
                  Color(0xFFB71C1C),
                  Colors.red,
                ],
                )
              ),
            Positioned(
              top: -(size.width*0.57) * 0.55,
              left: -(size.width*0.57) * 0.15,
              child: Circle(
                size: orangeSize,
                colors: const [
                  Colors.white,
                  Colors.black12
                ],
                )
              ),
              Positioned(
                top: pinkSize*0.4,
                child: IconContainer(
                  size: size.width * 0.28,
                ))
          ],
        ),
      ),
    );
  }
}