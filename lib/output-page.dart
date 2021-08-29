import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'elixir app',
      home: Scaffold(appBar: AppBar( backgroundColor: Color(0xFFB40284A),
        title: Text('Appointment page' ,),),
        body: Container(
          child: appointmentpage(),
        ),
      )
    );
  }
}
class appointmentpage extends StatefulWidget {
  const appointmentpage({ Key? key }) : super(key: key);

  @override
  _appointmentpageState createState() => _appointmentpageState();
}

class _appointmentpageState extends State<appointmentpage> {
  int _pagestate = 0;
  var _backgroundcolor = Colors.white;
  var _headingstate1 = Color(0xFF263238);
  var _headingstate2 = Color(0xFFB40284A);
  double _loginwidth = 0;
  double _loginheight = 0;
  double _loginyoffset = 0;
  double _loginXofset = 0;
  double _loginopacity = 1;
  double _registerYoffset = 0;
  double windowwidth = 0;
  double windowheight = 0;
  double _registerheight = 0;
  double _headanime = 100;
  @override
  Widget build(BuildContext context) {
     windowheight = MediaQuery.of(context).size.height;
    windowwidth = MediaQuery.of(context).size.height;
    _loginheight = windowheight - 250;
    _registerheight = windowheight - 248;
    switch (_pagestate) {
      case 0:
        _backgroundcolor = Colors.white;
        _headingstate1 = Color(0xFFB40284A);
        _headingstate2 = Color(0xFF33691E);
        _loginwidth = windowwidth;
        _loginyoffset = windowheight;
        _loginXofset = 0;
        _loginopacity = 1;
        _registerYoffset = windowheight;
        _headanime = 100;
        break;
      case 1:
        _backgroundcolor = Color(0xFFB40284A);
        _headingstate1 = Colors.white;
        _headingstate2 = Color(0xFF8BC34A);
        _loginwidth = windowwidth;
        _loginyoffset = 250;
        _loginXofset = 0;
        _loginopacity = 1;
        _registerYoffset = windowheight;
        _headanime = 85;
        break;
      case 2:
        _backgroundcolor = Color(0xFFB40284A);
        _headingstate1 = Colors.white;
        _headingstate2 = Color(0xFF8BC34A);
        _loginwidth = windowwidth - 450;
        _loginyoffset = 220;
        _loginXofset = 20;
        _loginopacity = 0.7;
        _registerYoffset = 250;
        _headanime = 75;
        break;
    }
    return Container(
      child: Column(
         mainAxisAlignment :MainAxisAlignment.spaceAround,
        children: <Widget>[
           Container(
             margin: EdgeInsets.only(bottom: 230,right: 380),  
                child: Text('Report:', style: TextStyle(
                fontSize: 22,
            ),
          ),
               
        ),
        Container(
          child: Column(
           
            children:<Widget> [
              Container(
                margin: EdgeInsets.all(50),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xFFB40284A),
               borderRadius: BorderRadius.circular(50) 
                ),
                child: Center(
                  child: InkWell(
                    onTap: () {},
                    child: Text('Get appointment',
                    style: TextStyle(color: Colors.white,fontSize: 20),),
                
                  ),
                ),
                

              ),
              Container(
                child: Container(
                  margin: EdgeInsets.all(50),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(color: Color(0xFFB71C1C),
                  borderRadius: BorderRadius.circular(50),
                  ),
                  child:Center(
                    child: InkWell(
                      onTap: () {},
                      child: Text('Emergency',
                      style: TextStyle(color: Colors.white,fontSize: 20),
                      
                    ),
                    
                  
                                  ),
                  ),
              )
              ),
              
        AnimatedContainer(
            padding: EdgeInsets.all(30),
            width: _loginwidth,
            height: _loginheight,
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(
              milliseconds: 1000,
            ),
            transform:
                Matrix4.translationValues(_loginXofset, _loginyoffset, 1),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(_loginopacity),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column()),
            ],
            
          ),
        )
      ],
    ),
            );
      
        
      
 }
}