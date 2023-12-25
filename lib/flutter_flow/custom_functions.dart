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
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

bool? seach(
  String? textsearchfor,
  String? textsearchin,
) {
  if (textsearchfor == null || textsearchin == null) {
    return null;
  }
  return textsearchin.toLowerCase().contains(textsearchfor.toLowerCase());
}

double? returnsum(List<TransactionRecord>? transaction) {
  //  write a function that return the sum of all amount  in a document
  double sum = 0.0;
  if (transaction != null) {
    for (var record in transaction) {
      sum += record.amount ?? 0.0;
    }
  }
  return sum;
}
