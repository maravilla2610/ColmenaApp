import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';
export 'counter_model.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  late CounterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CounterModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('COUNTER_COMP_counter_ON_INIT_STATE');
      logFirebaseEvent('counter_backend_call');

      await _model.quantity!.update(createProductosRecordData());
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 2.0, 0.0),
      child: Container(
        width: 80.0,
        height: 30.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).accent4,
          borderRadius: BorderRadius.circular(8.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: Color(0x94249689),
            width: 2.0,
          ),
        ),
        child: FlutterFlowCountController(
          decrementIconBuilder: (enabled) => FaIcon(
            FontAwesomeIcons.minus,
            color:
                enabled ? Colors.black : FlutterFlowTheme.of(context).alternate,
            size: 10.0,
          ),
          incrementIconBuilder: (enabled) => FaIcon(
            FontAwesomeIcons.plus,
            color:
                enabled ? Colors.black : FlutterFlowTheme.of(context).alternate,
            size: 10.0,
          ),
          countBuilder: (count) => Text(
            count.toString(),
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Outfit',
                  fontSize: 15.0,
                ),
          ),
          count: _model.countControllerValue ??= 1,
          updateCount: (count) =>
              setState(() => _model.countControllerValue = count),
          stepSize: 1,
          contentPadding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
        ),
      ),
    );
  }
}
