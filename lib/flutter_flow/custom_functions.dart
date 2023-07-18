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

double? calculateSubtotal(
  int? cantidad,
  double? precio,
) {
  // calculate subtotal of the product
  if (cantidad == null || precio == null) {
    return null;
  }
  return cantidad * precio;
}

double cartTotal(
  double amount,
  double taxes,
  double shipping,
) {
  // sum of three arguments
  return amount + (amount * 0.1) + shipping;
}

double? deleteCart(double? price) {
  // multiply price times negative one
  if (price == null) {
    return null;
  }
  return price * -1;
}

DocumentReference? queryProductCategory(String? productcategory) {
  // extract all the products that match the category name in the document
// get the reference to the "products" collection
  CollectionReference productsRef =
      FirebaseFirestore.instance.collection('PRODUCTOS');

  // query the collection for products with matching category name

  // return the query reference
  return productsRef.doc(productcategory);
}

List<double>? totalList(List<double>? subTotal) {
  // total of subtotal from a list
  if (subTotal == null || subTotal.isEmpty) {
    return null;
  }
  double total = 0.0;
  for (double sub in subTotal) {
    total += sub;
  }
  return [total];
}

double? percentage(double? amount) {
  // percentage from a value
  if (amount == null) return null;
  return amount * 0.01;
}

double? progressBar(
  double? supply,
  double? demand,
) {
  // division of the defined arguments
  if (demand == 0) {
    return null;
  }
  return demand! / supply!;
}

DocumentReference? getCartById(String? amount) {
  // Get the reference to the "cart" collection
  CollectionReference cartRef = FirebaseFirestore.instance.collection('cart');

  // Get the document with the provided id
  return amount != null ? cartRef.doc(amount) : null;
}

double? cartConversion(double? amount) {
  // multiply the amount by 1000
  if (amount != null) {
    return amount * 100;
  }
  return null;
}
