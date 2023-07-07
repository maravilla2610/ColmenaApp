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
import 'item_detail_model.dart';
export 'item_detail_model.dart';

class ItemDetailWidget extends StatefulWidget {
  const ItemDetailWidget({
    Key? key,
    required this.itemParameter,
  }) : super(key: key);

  final ProductosRecord? itemParameter;

  @override
  _ItemDetailWidgetState createState() => _ItemDetailWidgetState();
}

class _ItemDetailWidgetState extends State<ItemDetailWidget> {
  late ItemDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemDetailModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'ItemDetail'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'ItemDetail',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 500.0,
                          child: Stack(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            children: [
                              Image.network(
                                widget.itemParameter!.imageURL,
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.85, -0.4),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 50.0, 0.0, 0.0),
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30.0,
                                              borderWidth: 1.0,
                                              buttonSize: 40.0,
                                              fillColor: Color(0x7F0F1113),
                                              icon: Icon(
                                                Icons.chevron_left_rounded,
                                                color: Colors.white,
                                                size: 20.0,
                                              ),
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'ITEM_DETAIL_chevron_left_rounded_ICN_ON_');
                                                logFirebaseEvent(
                                                    'IconButton_navigate_back');
                                                context.safePop();
                                              },
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.85, -0.4),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 50.0, 0.0, 0.0),
                                            child:
                                                StreamBuilder<List<CartRecord>>(
                                              stream: queryCartRecord(
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
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 50.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<CartRecord>
                                                    iconButtonCartRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconButtonCartRecord =
                                                    iconButtonCartRecordList
                                                            .isNotEmpty
                                                        ? iconButtonCartRecordList
                                                            .first
                                                        : null;
                                                return FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 30.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 40.0,
                                                  fillColor: Color(0x7F0F1113),
                                                  icon: FaIcon(
                                                    FontAwesomeIcons
                                                        .shoppingCart,
                                                    color: Colors.white,
                                                    size: 20.0,
                                                  ),
                                                  onPressed: () async {
                                                    logFirebaseEvent(
                                                        'ITEM_DETAIL_PAGE_shoppingCart_ICN_ON_TAP');
                                                    logFirebaseEvent(
                                                        'IconButton_navigate_to');

                                                    context
                                                        .pushNamed('checkout');
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ClipRRect(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 7.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 110.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x31000000),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 16.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 20.0, 0.0, 0.0),
                                                child: Text(
                                                  widget.itemParameter!
                                                      .productName,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color: Colors.white,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 8.0, 24.0, 0.0),
                                                child: Text(
                                                  widget.itemParameter!
                                                      .productDescription,
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: wrapWithModel(
                                model: _model.progressBarModel,
                                updateCallback: () => setState(() {}),
                                child: ProgressBarWidget(),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 16.0, 24.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                formatNumber(
                                  functions.calculateSubtotal(
                                      _model.countControllerValue,
                                      widget.itemParameter!.costo1),
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.periodDecimal,
                                  currency: '',
                                ),
                                style:
                                    FlutterFlowTheme.of(context).headlineMedium,
                              ),
                              Container(
                                width: 156.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(25.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                ),
                                child: FlutterFlowCountController(
                                  decrementIconBuilder: (enabled) => FaIcon(
                                    FontAwesomeIcons.minus,
                                    color: enabled
                                        ? FlutterFlowTheme.of(context)
                                            .secondaryText
                                        : Color(0xFFE0E3E7),
                                    size: 20.0,
                                  ),
                                  incrementIconBuilder: (enabled) => FaIcon(
                                    FontAwesomeIcons.plus,
                                    color: enabled
                                        ? FlutterFlowTheme.of(context)
                                            .primaryText
                                        : Color(0xFFE0E3E7),
                                    size: 20.0,
                                  ),
                                  countBuilder: (count) => Text(
                                    count.toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium,
                                  ),
                                  count: _model.countControllerValue ??= 1,
                                  updateCount: (count) => setState(() =>
                                      _model.countControllerValue = count),
                                  stepSize: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'Options',
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 5.0, 0.0, 0.0),
                          child: Text(
                            'Please make a selection from the options below.',
                            style: FlutterFlowTheme.of(context).labelSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                StreamBuilder<List<CartRecord>>(
                  stream: queryCartRecord(
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
                    List<CartRecord> containerCartRecordList = snapshot.data!;
                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final containerCartRecord =
                        containerCartRecordList.isNotEmpty
                            ? containerCartRecordList.first
                            : null;
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'ITEM_DETAIL_Container_737hi18z_ON_TAP');
                        if (loggedIn) {
                          if (containerCartRecord != null) {
                            logFirebaseEvent('Container_backend_call');

                            var selectedItemsRecordReference1 =
                                SelectedItemsRecord.collection.doc();
                            await selectedItemsRecordReference1
                                .set(createSelectedItemsRecordData(
                              item: widget.itemParameter!.reference,
                              name: widget.itemParameter!.productName,
                              description:
                                  widget.itemParameter!.productDescription,
                              image: widget.itemParameter!.imageURL,
                              price: widget.itemParameter!.costo1,
                              creator: currentUserReference,
                              subTotal: functions.calculateSubtotal(
                                  _model.countControllerValue,
                                  widget.itemParameter!.costo1),
                              quantity: _model.countControllerValue,
                            ));
                            _model.produtoCreadoExiste =
                                SelectedItemsRecord.getDocumentFromData(
                                    createSelectedItemsRecordData(
                                      item: widget.itemParameter!.reference,
                                      name: widget.itemParameter!.productName,
                                      description: widget
                                          .itemParameter!.productDescription,
                                      image: widget.itemParameter!.imageURL,
                                      price: widget.itemParameter!.costo1,
                                      creator: currentUserReference,
                                      subTotal: functions.calculateSubtotal(
                                          _model.countControllerValue,
                                          widget.itemParameter!.costo1),
                                      quantity: _model.countControllerValue,
                                    ),
                                    selectedItemsRecordReference1);
                            logFirebaseEvent('Container_backend_call');

                            await containerCartRecord!.reference.update({
                              'itemCount': FieldValue.increment(
                                  _model.countControllerValue!),
                              'selectedItemsLst': FieldValue.arrayUnion(
                                  [_model.produtoCreadoExiste!.reference]),
                              'amount': FieldValue.increment(
                                  functions.calculateSubtotal(
                                      _model.countControllerValue,
                                      widget.itemParameter!.costo1)!),
                            });
                          } else {
                            logFirebaseEvent('Container_backend_call');

                            var selectedItemsRecordReference2 =
                                SelectedItemsRecord.collection.doc();
                            await selectedItemsRecordReference2
                                .set(createSelectedItemsRecordData(
                              item: widget.itemParameter!.reference,
                              name: widget.itemParameter!.productName,
                              description:
                                  widget.itemParameter!.productDescription,
                              image: widget.itemParameter!.imageURL,
                              price: widget.itemParameter!.costo1,
                              subTotal: functions.calculateSubtotal(
                                  _model.countControllerValue,
                                  widget.itemParameter!.costo1),
                              creator: currentUserReference,
                              quantity: _model.countControllerValue,
                            ));
                            _model.productoCread =
                                SelectedItemsRecord.getDocumentFromData(
                                    createSelectedItemsRecordData(
                                      item: widget.itemParameter!.reference,
                                      name: widget.itemParameter!.productName,
                                      description: widget
                                          .itemParameter!.productDescription,
                                      image: widget.itemParameter!.imageURL,
                                      price: widget.itemParameter!.costo1,
                                      subTotal: functions.calculateSubtotal(
                                          _model.countControllerValue,
                                          widget.itemParameter!.costo1),
                                      creator: currentUserReference,
                                      quantity: _model.countControllerValue,
                                    ),
                                    selectedItemsRecordReference2);
                            logFirebaseEvent('Container_backend_call');

                            await CartRecord.collection.doc().set({
                              ...createCartRecordData(
                                creator: currentUserReference,
                                itemCount: _model.countControllerValue,
                                isActive: true,
                                amount: functions.calculateSubtotal(
                                    _model.countControllerValue,
                                    widget.itemParameter!.costo1),
                              ),
                              'selectedItemsLst': [
                                _model.productoCread!.reference
                              ],
                            });
                          }
                        } else {
                          logFirebaseEvent('Container_navigate_to');

                          context.pushNamed('loginPage');
                        }

                        setState(() {});
                      },
                      child: Container(
                        width: double.infinity,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).success,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5.0,
                              color: Color(0x411D2429),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Añadir al carrito',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: Text(
                                  '${widget.itemParameter!.quantity.toString()}Item',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0x99FFFFFF),
                                        fontSize: 14.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
