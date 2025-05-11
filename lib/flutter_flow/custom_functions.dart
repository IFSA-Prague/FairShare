import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<String>? addOtherToList(List<String>? myList) {
  if (myList == null) return ['Other'];
  return List<String>.from(myList)..add('Other');
}

String? generateCode() {
  const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  final rand = math.Random();
  return List.generate(6, (index) => chars[rand.nextInt(chars.length)]).join();
}

DateTime? getExpirationTime() {
  return DateTime.now().add(Duration(hours: 2));
}

DateTime? getCurrentTime() {
  return DateTime.now();
}
