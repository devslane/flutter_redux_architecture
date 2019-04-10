import 'package:flutter_demo/actions/actions.dart';
import 'package:flutter_demo/models/app_state.dart';
import 'package:redux/redux.dart';

Reducer<UserState> userReducer = combineReducers([
  TypedReducer<UserState, SetUser>(setUserReducer),
]);

UserState setUserReducer(UserState userState, SetUser action) {
  print("In action reducer Set user");
  UserState newState = userState.rebuild((b) => b
    ..profile = action.user.toBuilder()
    ..isLoggedIn = true);
  return newState;
}
