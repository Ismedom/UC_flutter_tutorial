import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello, Flutter!',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

//

// import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String text = "Click me!";

  void updateText() {
    setState(() {
      text = "You clicked the button!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
          ElevatedButton(
            onPressed: updateText,
            child: Text("Click"),
          ),
        ],
      ),
    );
  }
}

//
// Container(
//   padding: EdgeInsets.all(20),
//   margin: EdgeInsets.all(10),
//   color: Colors.blue,
//   child: Text('Hello, Container!'),
// )

// import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Tree Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello, Flutter!'),
              ElevatedButton(
                onPressed: () {
                  print('Button clicked!');
                },
                child: Text('Click me!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 