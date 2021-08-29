import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  String ptext = '';
  String ttext = '';

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    ttext = 'Submit';
    super.initState();
  }

  void method1() {
    setState(() {
      ttext = 'Submiting';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Statefull Widget',
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Color(0xFFB40284A),
            title: Text('Elixir'),
          ),
          body: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Positioned(
                  top: 65,
                  left: 45,
                  width: 110,
                  height: 80,
                  child: Text(
                    'Information',
                    style: TextStyle(fontSize: 20),
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
                child: Container(
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      labelText: 'What are your symptoms?',
                      labelStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white70,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide:
                            BorderSide(color: Color(0xFFB40284A), width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Color(0xFFB40284A)),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 170),
                child: Container(
                    child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    labelText: 'Where do you feel the pain?',
                    labelStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide:
                          BorderSide(color: Color(0xFFB40284A), width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Color(0xFFB40284A)),
                    ),
                  ),
                )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 240),
                child: Container(
                    child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    labelText: 'When did it start?',
                    labelStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide:
                          BorderSide(color: Color(0xFFB40284A), width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Color(0xFFB40284A)),
                    ),
                  ),
                )),
              ),
              Positioned(
                  top: 370,
                  width: 200,
                  left: 95,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFB40284A), // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {
                        method1();
                      },
                      child: Text(ttext))),
            ],
          )),
    );
  }
}
