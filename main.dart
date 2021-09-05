//Ctrl + F and paste '§' for Search 'Parts Start' 
//Ctrl + F and Paste '※' for Search 'Need to Fix/add'
//Ctrl + F and Paste '♣' for Search 'Can't Fix Bugs'
//Ctrl + F and Paste '★' for Search 'Design Idea'

import 'package:flutter/material.dart';

//import some packages if need

//calling Loginpage §
void main() {
  runApp(MaterialApp(
    title: 'Ucation',
    home: Scaffold(
      appBar: AppBar(title: Text('Welcome~'),),
      body: LoginPage(),
    ),
  ),
  );
}
//to here


//Login with use(json) §
class LoginPage extends StatelessWidget {
  BuildContext ctx;
  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('회원가입', style: TextStyle(fontSize: 24)),
            onPressed: () => 
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterPage()),
            ),
          ),
          RaisedButton(
            child: Text('메인페이지', style: TextStyle(fontSize: 24)),
            onPressed: () =>
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Mains())),
          ),
          RaisedButton(
            child: Text('청소년 인증', style: TextStyle(fontSize: 24)),
            onPressed: () =>
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Verification())),
          ),
        ],
      ),
    );
  }
}


//this page for register(json) §
class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go To Login'),
        ),
      ),
    );
  }
}
//to here;


//mainpage from here §
class MainPages extends State<Mains> {
  BuildContext ctx;
  @override
  Widget build(BuildContext context) {
    ctx = context;
    //Add Bottom Navy Bar (Icons) ※
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('Chat Page', style: TextStyle(fontSize: 24)),
            onPressed: () => 
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Chatpage())),
          ),
          RaisedButton(
            child: Text('Friend List', style: TextStyle(fontSize: 24)),
            onPressed: () =>
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => FriendList())),
          ),
          RaisedButton(
            child: Text('Settings', style: TextStyle(fontSize: 24)),
            onPressed: () =>
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Settingpage())),
          ),
          RaisedButton(
            child: Text('Profile', style: TextStyle(fontSize: 24)),
            onPressed: () =>
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => ProfilePage())),
          ),
          RaisedButton(
            child: Text('Consult Friend List', style: TextStyle(fontSize: 24)),
            onPressed: () =>
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Consult())),
          ),
        ],
      ),
    );
  }
}

class Mains extends StatefulWidget {
  MainPages createState() => new MainPages();
}
//to here


//chat from here §§
//Put Chat Page in Friend List!! ※
//Make Consult Chat Page ※
class Chatpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go To Main', style: TextStyle(fontSize: 24)),
          onPressed: () => 
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Mains())),
        ),
      ),
    );
  }
}


//Consulting Chat Page from here §
//Put this codes in Friend List ※
//Put Consunt Friend List in Friend List ※
class Cons extends State<Consult>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Consulting Friend Lists'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go To Main', style: TextStyle(fontSize: 24)),
          onPressed: () => 
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Mains())),
        ),
      ),
    );
  }
}

class Consult extends StatefulWidget {
  Cons createState() => new Cons();
}
//to here;

//to here;;


//FriendList from here §
class FriendList extends StatelessWidget {
  //Show Friend List Like 'KakaoTalk' ※
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Friend List'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go To Main', style: TextStyle(fontSize: 24)),
          onPressed: () =>
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Mains())),
        ),
      ),
    );
  }
}
//to here;


//settings from here §
class Settingpage extends StatelessWidget {
  BuildContext ctx;
  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('Go To Main', style: TextStyle(fontSize: 24)),
            onPressed: () => 
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Mains())),
          ),
          RaisedButton(
            child: Text('Emergency Settings', style: TextStyle(fontSize: 24)),
            onPressed: () => 
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => EmergencyPage())),
          ),
        ],
      ),
    );
  }
}

class Emergencys extends State<EmergencyPage>{
  //Add (On/Off) buttons At here ※
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Emergency Settings'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go To Settings', style: TextStyle(fontSize: 24)),
          onPressed: () =>
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Settingpage())),
        ),
      ),
    );
  }
}

class EmergencyPage extends StatefulWidget{
  Emergencys createState() => new Emergencys();
}
//to here;


//User Profile from here §
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Profile'), //Make it Show User Name ※
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go To Main', style: TextStyle(fontSize: 24)),
          onPressed: () =>
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Mains())),
        ),
      ),
    );
  }
}
//to here;


//Verification Page from here §
class Verifi extends State<Verification> {
  //Show PopUp Message when Click "Verification" Buttons ※
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Youth Verification'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to Login Page', style: TextStyle(fontSize: 24)),
          onPressed: () =>
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => LoginPage())),
        ),
      ),
    );
  }
}

class Verification extends StatefulWidget {
 Verifi createState() => new Verifi();
}
//to here;


//PopUp Menu at MainPage Sauce at Flutterawesome.com §

