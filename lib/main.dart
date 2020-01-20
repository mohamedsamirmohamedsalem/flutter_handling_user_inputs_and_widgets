import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Icon(Icons.favorite),
          SizedBox(
            width: 20.0,
          ),
          Icon(Icons.notifications),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  //  colorFilter: ,
                  image: AssetImage('assets/img.png'),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: Colors.white, width: 20.0)),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'You have pushed the button this many times:',
                ),
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            TextField(
              autofocus: true,
              decoration: InputDecoration(labelText: 'Data'),
            ),
            Switch(
              value: true,
              onChanged: (bool value) {},
            ),
            SwitchListTile(
              activeColor: Colors.purple,
              value: false,
              onChanged: (bool value) {},
              title: Text('Named Switch'),
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              color: Colors.black,
              onPressed: () {
                print('///////////////icon button');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
