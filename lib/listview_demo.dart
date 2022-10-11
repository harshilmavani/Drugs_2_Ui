import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    height: 100,
                    width: 150,
                    color: Colors.red,
                  ),
                  Text("Hii")
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
