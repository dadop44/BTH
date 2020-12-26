import 'package:bth/constants/route_name.dart';
import 'package:bth/locator.dart';
import 'package:bth/services/authentication.dart';
import 'package:bth/services/dialog_services.dart';
import 'package:bth/services/navigation_services.dart';
import 'package:bth/viewmodel/base_model.dart';
import 'package:flutter/cupertino.dart';

class LoginViewModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final DialogService _dialogService = locator<DialogService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future login({
    @required String email,
    @required String password,
  }) async {
    setBusy(true);

    var result = await _authenticationService.loginWithEmail(
      email: email,
      password: password,
    );

    setBusy(false);

    if (result is bool) {
      if (result) {
        _navigationService.navigateTo(HomeViewRoute);
      } else {
        await _dialogService.showDialog(
          title: 'Đăng nhập thất bại',
          description: 'Đăng nhập không thành công, vui lòng thử lại!',
        );
      }
    } else {
      await _dialogService.showDialog(
        title: 'Đăng nhập thất bại',
        description: result,
      );
    }
  }
}
