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

DateTime getStartOfMonth() {
  final now = DateTime.now();
  return DateTime(now.year, now.month, 1);
}

DateTime getEndOfMonth() {
  final now = DateTime.now();
  final startNextMonth = (now.month < 12)
      ? DateTime(now.year, now.month + 1, 1)
      : DateTime(now.year + 1, 1, 1);
  return startNextMonth.subtract(Duration(days: 1));
}

double sumValores(List<ServicosRecord>? docs) {
  double total = 0.0;

  if (docs != null) {
    for (var doc in docs) {
      var valor = doc.valor;

      if (valor != null) {
        try {
          total += double.parse(valor.toString());
        } catch (e) {
          // ignora se não for número válido
        }
      }
    }
  }
  return 0;
}

DateTime getStartOfYear() {
  // I want a getStartOfYear code to use as the start of the filter to calculate annual revenue.
  final now = DateTime.now();
  return DateTime(now.year, 1, 1);
}

DateTime getEndOfYear() {
  final now = DateTime.now();
  final startNextYear = DateTime(now.year + 1, 1, 1);
  return startNextYear.subtract(Duration(days: 1));
}
