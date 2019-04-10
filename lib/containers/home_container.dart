import 'package:flutter/material.dart';
import 'package:flutter_demo/actions/actions.dart';
import 'package:flutter_demo/models/app_state.dart';
import 'package:flutter_demo/models/user.dart';
import 'package:flutter_demo/presentations/home_page.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      converter: _ViewModel.fromStore,
      builder: (BuildContext context, _viewModel) {
        return HomePage(_viewModel.user, _viewModel.onSetUser,
            _viewModel.onLoadingComplete);
      },
    );
  }
}

class _ViewModel {
  User user;
  Function onSetUser;
  Function onLoadingComplete;

  _ViewModel({
    this.user,
    this.onSetUser,
    this.onLoadingComplete,
  });

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
        user: store.state.user.profile,
        onLoadingComplete: () {
          store.dispatch(LoadingAction(false));
        },
        onSetUser: () {
          User user = User((b) => b
            ..id = 1
            ..fullName = "Alex"
            ..gender = Gender.M
            ..userName = "myusername"
            ..age = 19
            ..country = "India");
          store.dispatch(SetUser(user: user));
        });
  }
}
