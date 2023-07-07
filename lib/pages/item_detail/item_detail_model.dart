import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/progress_bar_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ItemDetailModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for progressBar component.
  late ProgressBarModel progressBarModel;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  SelectedItemsRecord? produtoCreadoExiste;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  SelectedItemsRecord? productoCread;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    progressBarModel = createModel(context, () => ProgressBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    progressBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
