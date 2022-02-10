import 'package:clock_application/clock_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();

    return Scaffold(
      backgroundColor: const Color(0xFF2D2f41),
      body: Container(
        padding: const EdgeInsets.all(32),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              'Clock',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 32,
            ),
            const Text(
              'Clock',
              style: TextStyle(color: Colors.white, fontSize: 64),
            ),
            const Text(
              'Clock',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),

            const ClockView(),
            const Text(
              'Timezone',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),

            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Icon(
                  Icons.language,
                  color: Colors.white,
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  width: 16,
                ),
                const Text(
                  'UTC',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
