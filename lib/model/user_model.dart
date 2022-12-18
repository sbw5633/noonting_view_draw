import 'package:flutter/material.dart';

class UserModel {
  final String name;
  final ImageProvider? imgUrl;

  UserModel({
    required this.name,
    this.imgUrl,
  });
}
