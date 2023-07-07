import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/counter_widget.dart';
import '/components/progress_bar_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ProductModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for progressBar component.
  late ProgressBarModel progressBarModel;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SelectedItemsRecord? produtoCreadoExiste;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SelectedItemsRecord? productoCread;
  // Model for counter component.
  late CounterModel counterModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    progressBarModel = createModel(context, () => ProgressBarModel());
    counterModel = createModel(context, () => CounterModel());
  }

  void dispose() {
    progressBarModel.dispose();
    counterModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
