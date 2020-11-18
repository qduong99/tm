// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

const appPrimaryColor = Colors.lightBlueAccent;
const appAccentColor = Color(0xFFFFB900);

final appBarTheme = AppBarTheme(
  elevation: 0,
  color: appPrimaryColor,
);

final appTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: appPrimaryColor,
  accentColor: appAccentColor,
  appBarTheme: appBarTheme,
  backgroundColor: Colors.green,
  // Define the default Font Family
  fontFamily: 'Montserrat',

  // Define the default TextTheme. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: TextTheme(
    headline4: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
    ),
  ),
);
