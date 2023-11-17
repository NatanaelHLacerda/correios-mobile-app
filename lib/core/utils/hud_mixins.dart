import 'package:flutter/material.dart';

mixin HudMixins {
  navigateThenUntil(BuildContext context, String routeName, Object? args) {
    Navigator.of(context).pushNamed(routeName, arguments: args);
  }
}