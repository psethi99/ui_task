import 'package:flutter/material.dart';

import 'data_page.dart';

class BatteryPage extends StatelessWidget {
  const BatteryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  child: Icon(Icons.arrow_back_rounded, size: 40,color: Colors.indigo,),
                  onTap: () {},
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_rounded, size: 40,color: Colors.indigo,),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DataPage()),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 120),
            Text(
              'Battery page',
              style: TextStyle(fontSize: 24, color: Colors.indigo),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
