import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'progress_bar_model.dart';
export 'progress_bar_model.dart';

class ProgressBarWidget extends StatefulWidget {
  const ProgressBarWidget({Key? key}) : super(key: key);

  @override
  _ProgressBarWidgetState createState() => _ProgressBarWidgetState();
}

class _ProgressBarWidgetState extends State<ProgressBarWidget> {
  late ProgressBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgressBarModel());

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

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 10.0),
        child: StreamBuilder<List<ProductosRecord>>(
          stream: queryProductosRecord(
            singleRecord: true,
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: SpinKitPulse(
                    color: FlutterFlowTheme.of(context).primary,
                    size: 50.0,
                  ),
                ),
              );
            }
            List<ProductosRecord> progressBarProductosRecordList =
                snapshot.data!;
            // Return an empty Container when the item does not exist.
            if (snapshot.data!.isEmpty) {
              return Container();
            }
            final progressBarProductosRecord =
                progressBarProductosRecordList.isNotEmpty
                    ? progressBarProductosRecordList.first
                    : null;
            return LinearPercentIndicator(
              percent: functions.progressBar(
                  progressBarProductosRecord!.supply.toDouble(),
                  progressBarProductosRecord!.demand.toDouble())!,
              lineHeight: 20.0,
              animation: true,
              progressColor: FlutterFlowTheme.of(context).tertiary,
              backgroundColor: FlutterFlowTheme.of(context).accent4,
              center: Text(
                '50%',
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Outfit',
                      fontSize: 15.0,
                    ),
              ),
              barRadius: Radius.circular(20.0),
              padding: EdgeInsets.zero,
            );
          },
        ),
      ),
    );
  }
}
