import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  static const tag = '/';

  @override
  State<StatefulWidget> createState() {
    return _SignUpState();
  }
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: ListView(
        children: <Widget>[
          Container(
            decoration: decoration,
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                welcomeTitle,
                nameField,
                emailField,
                passwordField,
                signUpButton,
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// this will be app bar of the app
  final Widget appBar = AppBar(
    titleSpacing: 0,
    elevation: 0,
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    title: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text(
              'Sign In',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: () {},
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    centerTitle: false,
  );

  /// container decoration
  final decoration = BoxDecoration(
    boxShadow: [
      new BoxShadow(
        color: Colors.black26,
        offset: new Offset(0.0, 2.0),
        blurRadius: 25.0,
      )
    ],
    color: Colors.white,
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(32),
      bottomRight: Radius.circular(32),
    ),
  );

  final welcomeTitle = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(
          left: 16,
          top: 16,
          bottom: 8,
        ),
        child: Text(
          'Welcome to Shopping App.',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 16, top: 8),
        child: Text(
          'Let\'s get started',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    ],
  );

  final nameField = Padding(
    padding: EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 8),
    child: TextField(
      style: TextStyle(fontSize: 18),
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        hintText: 'Name',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    ),
  );

  final emailField = Padding(
    padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(fontSize: 18),
      decoration: InputDecoration(
        hintText: 'E-Mail Address',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    ),
  );

  final passwordField = Padding(
    padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
    child: TextField(
      obscureText: true,
      style: TextStyle(fontSize: 18),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Password',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    ),
  );

  final signUpButton = Align(
    alignment: Alignment.centerRight,
    child: Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        color: Colors.white,
        onPressed: () {
          // Navigator.pushNamed(context, '/grocery/verify');
        },
        icon: Icon(Icons.arrow_forward),
      ),
    ),
  );
}
