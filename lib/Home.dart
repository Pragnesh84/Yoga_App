import 'package:flutter/material.dart';



class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Yoga App'),
      ),
      body: SingleChildScrollView(
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15 , horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("1"),
                      Text("Streak"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("1"),
                      Text("Streak"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("1"),
                      Text("Streak"),
                    ],
                  ),
                ],
              ),
            ),
            Divider(thickness: 5, indent: 10, endIndent: 10,),
            Container(
              padding: EdgeInsets.all(20) ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Yoga for All"),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      color: Colors.grey,
                      height: 130,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      color: Colors.grey,
                      height: 130,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Yoga for Student"),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      color: Colors.grey,
                      height: 130,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      color: Colors.grey,
                      height: 130,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      color: Colors.grey,
                      height: 130,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      color: Colors.grey,
                      height: 130,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
