import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/app_bar_widget.dart';
import '/components/dropdown07_account_widget.dart';
import '/components/product_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<DocumentReference> quantity = [];
  void addToQuantity(DocumentReference item) => quantity.add(item);
  void removeFromQuantity(DocumentReference item) => quantity.remove(item);
  void removeAtIndexFromQuantity(int index) => quantity.removeAt(index);
  void updateQuantityAtIndex(int index, Function(DocumentReference) updateFn) =>
      quantity[index] = updateFn(quantity[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Dropdown07Account component.
  late Dropdown07AccountModel dropdown07AccountModel;
  // Model for appBar component.
  late AppBarModel appBarModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dropdown07AccountModel =
        createModel(context, () => Dropdown07AccountModel());
    appBarModel = createModel(context, () => AppBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    dropdown07AccountModel.dispose();
    appBarModel.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  Future menu(BuildContext context) async {}

  /// Additional helper methods are added here.
}
