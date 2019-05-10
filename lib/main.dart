import 'package:flutter/material.dart';
import 'package:flutter_demo/containers/home_container.dart';
import 'package:flutter_demo/models/app_state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_demo/middleware/app_middleware.dart';
import 'package:flutter_demo/middleware/user_middleware.dart';
import 'package:flutter_demo/reducers/app_state_reducer.dart';

class DemoApp extends StatelessWidget {
  static List<Middleware<AppState>> listMiddleWare =
      new List<Middleware<AppState>>();

  final store = new Store<AppState>(appReducer,
      initialState: new AppState(),
      middleware: [appMiddleware, userMiddleware]);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        home: HomeContainer(),
      ),
    );
  }
}
