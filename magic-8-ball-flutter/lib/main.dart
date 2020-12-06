import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue[900],
          ),
          body: BallPage(),
        ),
      ),
    );


class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  print('I got clicked');
                },
                child: Image(
                  image: AssetImage('images/ball1.png'),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
