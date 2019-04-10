import 'package:flutter/material.dart';
import 'package:flutter_demo/models/user.dart';

class HomePage extends StatelessWidget {
  User user;
  Function onSetUser;
  Function onLoadingComplete;

  HomePage(this.user, this.onSetUser, this.onLoadingComplete);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () => onSetUser(),
              child: Text("Set User"),
            ),
            RaisedButton(
              onPressed: () => onLoadingComplete(),
              child: Text("Loading Complete"),
            ),
          ],
        ),
      ),
    );
  }
}
