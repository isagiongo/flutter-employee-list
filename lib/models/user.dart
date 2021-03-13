import 'package:flutter/material.dart';

class User {
  final String id;
  final String name;
  final String function;
  final String urlAvatar;

  const User({
    this.id,
    @required this.name,
    @required this.function,
    @required this.urlAvatar,
  });
}
