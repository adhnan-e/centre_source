
import 'package:flutter/material.dart';

callNext(var className, var context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => className,));}