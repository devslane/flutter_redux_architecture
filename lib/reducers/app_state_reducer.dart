import 'package:flutter_demo/actions/actions.dart';
import 'package:flutter_demo/models/app_state.dart';
import 'package:flutter_demo/reducers/user_reducer.dart';
import 'package:redux/redux.dart';

AppState appReducer(AppState state, action) {
  return state.rebuild((b) => b
    ..isLoading = loadingReducer(state.isLoading, action)
    ..user.replace(userReducer(state.user, action)));
}

Reducer<bool> loadingReducer =
    combineReducers<bool>([TypedReducer<bool, LoadingAction>(setLoading)]);

bool setLoading(bool state, LoadingAction action) {
  print("set loading " + action.isLoading.toString());
  return action.isLoading;
}
