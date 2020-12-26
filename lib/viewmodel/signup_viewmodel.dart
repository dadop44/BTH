import 'package:bth/constants/route_name.dart';
import 'package:bth/locator.dart';
import 'package:bth/services/authentication.dart';
import 'package:bth/services/dialog_services.dart';
import 'package:bth/services/navigation_services.dart';
import 'package:flutter/foundation.dart';

import 'base_model.dart';

class SignUpViewModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  final DialogService _dialogService = locator<DialogService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future signUp({
    @required String email,
    @required String password,
  }) async {
    setBusy(true);

    var result = await _authenticationService.signUpWithEmail(
      email: email,
      password: password,
    );

    setBusy(false);

    if (result is bool) {
      if (result) {
        _navigationService.navigateTo(HomeViewRoute);
      } else {
        await _dialogService.showDialog(
          title: 'Đăng ký thất bại',
          description: 'Đăng ký thất bại, vui lòng thử lại!',
        );
      }
    } else {
      await _dialogService.showDialog(
        title: 'Đăng ký thất bại',
        description: result,
      );
    }
  }
}
