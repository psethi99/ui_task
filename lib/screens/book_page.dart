import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

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
                IconButton(
                  icon: Icon(Icons.arrow_back_rounded, size: 40,color: Colors.indigo,),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_rounded, size: 40,color: Colors.indigo,),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 120),
            Text(
              'This Page shows the accounts',
              style: TextStyle(fontSize: 24, color: Colors.indigo),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
