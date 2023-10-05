import 'package:flutter/material.dart';

class MySharePage extends StatefulWidget {
  const MySharePage({super.key});

  @override
  State<StatefulWidget> createState() => _MySharePageState();
}

class Scrip {
  String name;
  int shareCount;
  double ltp;
  Scrip({required this.name, required this.shareCount, required this.ltp});
}

class _MySharePageState extends State<MySharePage> {
  List<Scrip> shares = [
    Scrip(name: 'JALPA dfdsfasdasd', shareCount: 10, ltp: 1110),
    Scrip(name: 'HDL asdfdfasdfa', shareCount: 16, ltp: 1900),
    Scrip(name: 'BARUN sdfdfad', shareCount: 20, ltp: 200),
    Scrip(name: 'NABIL dfdsfasdfa', shareCount: 30, ltp: 580),
    Scrip(name: 'NLIC adsfadfadf', shareCount: 20, ltp: 680),
    Scrip(name: 'SMATA adsfadfads', shareCount: 10, ltp: 800),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          title: const Text('test'),
        ),
        body: Container(child: getTextWidgets(shares)));
  }

  Widget getTextWidgets(List<Scrip> shares) {
    return Column(
      children: [
        for (Scrip e in shares)
          // ListView(
          //   scrollDirection: Axis.horizontal,
          //   shrinkWrap:
          //       true, // Allow the ListView to take up only the necessary space
          //   children: [
          //     Text(e.name),
          //     Text(e.shareCount.toString()),
          //     Text(e.name),
          //     Text(e.shareCount.toString()),
          //     Text(e.name),
          //     Text(e.shareCount.toString()),
          //     // Add more Text widgets as needed for other properties
          //   ],
          // ),
          Container(
              child: Row(
            children: [
              Container(
                  width: 100,
                  child: Text(
                    e.name,
                    textAlign: TextAlign.center,
                  )),
              Container(
                  width: 100,
                  child: Text(
                    e.shareCount.toString(),
                    textAlign: TextAlign.center,
                  )),
              Container(
                  width: 100,
                  child: Text(
                    e.name,
                    textAlign: TextAlign.center,
                  )),
              Container(
                  width: 100,
                  child: Text(
                    e.shareCount.toString(),
                    textAlign: TextAlign.center,
                  )),
              Container(
                  width: 100,
                  child: Text(
                    e.name,
                    textAlign: TextAlign.center,
                  )),
              Container(
                  width: 100,
                  child: Text(
                    e.shareCount.toString(),
                    textAlign: TextAlign.center,
                  )),
            ],
          ))
      ],
    );
  }
}
