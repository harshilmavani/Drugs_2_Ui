import 'package:flutter/material.dart';

class ListViewDemo2 extends StatelessWidget {
  const ListViewDemo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        width: 60,
                        color: Colors.black,
                      )
                    ],
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
