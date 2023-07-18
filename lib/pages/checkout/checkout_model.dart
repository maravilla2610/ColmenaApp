import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/stripe/payment_manager.dart';
import '/components/countercart_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CheckoutModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  DocumentReference? quantity;

  ///  State fields for stateful widgets in this page.

  // Models for countercart dynamic component.
  late FlutterFlowDynamicModels<CountercartModel> countercartModels;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  OrderRecord? orden;
  // Stores action output result for [Stripe Payment] action in Button widget.
  String? paymentId;
  // Stores action output result for [Backend Call - API (WhatsApp)] action in Button widget.
  ApiCallResponse? apiResult0bd;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    countercartModels = FlutterFlowDynamicModels(() => CountercartModel());
  }

  void dispose() {
    countercartModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
