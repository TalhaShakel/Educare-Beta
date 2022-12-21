import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var subject = "";
  var popularsubject = "";

  var count = 0.obs;
  increment() => count++;
}
