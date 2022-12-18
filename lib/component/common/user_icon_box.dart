import 'package:flutter/material.dart';
import 'package:noonting_view_draw/const/values.dart';
import 'package:noonting_view_draw/model/user_model.dart';

class UserIconBox extends StatelessWidget {
  final UserModel userModel;
  const UserIconBox({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: USER_ICON_SIZE,
        height: USER_ICON_SIZE,
        child: CircleAvatar(
          foregroundImage: userModel.imgUrl,
        ));
  }
}
