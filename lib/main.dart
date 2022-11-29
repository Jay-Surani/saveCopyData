import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

void main() {
  runApp(MaterialApp(
    home: saveandshare(),
  ));
}

class saveandshare extends StatefulWidget {
  const saveandshare({Key? key}) : super(key: key);

  @override
  State<saveandshare> createState() => _saveandshareState();
}

class _saveandshareState extends State<saveandshare> {
  String book = 'halllo jay';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('svae and copy'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Center(
                    child: Text(
                  'hallo flutter',
                  style: TextStyle(color: Colors.white),
                )),
                height: 100,
                width: 100,
                decoration: BoxDecoration(color: Colors.black),
              ),
            ),
            IconButton(
                onPressed: () {
                  FlutterClipboard.copy('$book')
                      .then((value) => print('copied'));
                  Share.share('$book');
                },
                icon: Icon(Icons.copy))
          ],
        ),
      ),
    );
  }
}
