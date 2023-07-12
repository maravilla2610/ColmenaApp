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
import 'product_model.dart';
export 'product_model.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({
    Key? key,
    required this.products,
  }) : super(key: key);

  final List<ProductosRecord>? products;

  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  late ProductModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('PRODUCT_COMP_product_ON_INIT_STATE');
      logFirebaseEvent('product_firestore_query');
      await queryProductosRecordOnce();
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
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
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
          List<ProductosRecord> cardProduct43ProductosRecordList =
              snapshot.data!;
          // Return an empty Container when the item does not exist.
          if (snapshot.data!.isEmpty) {
            return Container();
          }
          final cardProduct43ProductosRecord =
              cardProduct43ProductosRecordList.isNotEmpty
                  ? cardProduct43ProductosRecordList.first
                  : null;
          return Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 2.0,
                  color: Color(0x520E151B),
                  offset: Offset(0.0, 1.0),
                )
              ],
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'PRODUCT_COMP_Image_kgf87dm0_ON_TAP');
                            logFirebaseEvent('Image_expand_image');
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: FlutterFlowExpandedImageView(
                                  image: Image.network(
                                    cardProduct43ProductosRecord!.imageURL,
                                    fit: BoxFit.contain,
                                  ),
                                  allowRotation: false,
                                  tag: cardProduct43ProductosRecord!.imageURL,
                                  useHeroAnimation: true,
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: cardProduct43ProductosRecord!.imageURL,
                            transitionOnUserGestures: true,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                cardProduct43ProductosRecord!.imageURL,
                                width: double.infinity,
                                height: 260.0,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.progressBarModel,
                            updateCallback: () => setState(() {}),
                            child: ProgressBarWidget(),
                          ),
                        ),
                        Wrap(
                          spacing: 0.0,
                          runSpacing: 0.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      AutoSizeText(
                                        cardProduct43ProductosRecord!
                                            .productName
                                            .maybeHandleOverflow(
                                          maxChars: 30,
                                          replacement: '…',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF14181B),
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Stack(
                                        children: [
                                          if (loggedIn == false)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 15.0, 0.0),
                                                child: StreamBuilder<
                                                    List<CartRecord>>(
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
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 50.0,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<CartRecord>
                                                        buttonCartRecordList =
                                                        snapshot.data!;
                                                    final buttonCartRecord =
                                                        buttonCartRecordList
                                                                .isNotEmpty
                                                            ? buttonCartRecordList
                                                                .first
                                                            : null;
                                                    return FFButtonWidget(
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'PRODUCT_COMP__BTN_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Button_alert_dialog');
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  '¡Espera!'),
                                                              content: Text(
                                                                  'Nos falta conocerte, completa nuestro cuestionario y obten un 10% extra'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: Text(
                                                                      'Ok'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                        logFirebaseEvent(
                                                            'Button_launch_u_r_l');
                                                        await launchURL(
                                                            'https://www.micolmena.co/');
                                                      },
                                                      text: '',
                                                      icon: FaIcon(
                                                        FontAwesomeIcons
                                                            .medapps,
                                                      ),
                                                      options: FFButtonOptions(
                                                        height: 40.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                        elevation: 3.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50.0),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          if (loggedIn == true)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 15.0, 0.0),
                                                child: StreamBuilder<
                                                    List<CartRecord>>(
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
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 50.0,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<CartRecord>
                                                        buttonCartRecordList =
                                                        snapshot.data!;
                                                    final buttonCartRecord =
                                                        buttonCartRecordList
                                                                .isNotEmpty
                                                            ? buttonCartRecordList
                                                                .first
                                                            : null;
                                                    return FFButtonWidget(
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'PRODUCT_COMP__BTN_ON_TAP');
                                                        final firestoreBatch =
                                                            FirebaseFirestore
                                                                .instance
                                                                .batch();
                                                        try {
                                                          if (loggedIn) {
                                                            if (buttonCartRecord !=
                                                                null) {
                                                              logFirebaseEvent(
                                                                  'Button_backend_call');

                                                              var selectedItemsRecordReference1 =
                                                                  SelectedItemsRecord
                                                                      .collection
                                                                      .doc();
                                                              firestoreBatch.set(
                                                                  selectedItemsRecordReference1,
                                                                  createSelectedItemsRecordData(
                                                                    item: cardProduct43ProductosRecord!
                                                                        .reference,
                                                                    name: cardProduct43ProductosRecord!
                                                                        .productName,
                                                                    description:
                                                                        cardProduct43ProductosRecord!
                                                                            .productDescription,
                                                                    image: cardProduct43ProductosRecord!
                                                                        .imageURL,
                                                                    price: cardProduct43ProductosRecord!
                                                                        .costo1,
                                                                    creator:
                                                                        currentUserReference,
                                                                    subTotal: functions.calculateSubtotal(
                                                                        _model
                                                                            .counterModel
                                                                            .countControllerValue,
                                                                        cardProduct43ProductosRecord!
                                                                            .costo1),
                                                                    quantity: _model
                                                                        .counterModel
                                                                        .countControllerValue,
                                                                  ));
                                                              _model.produtoCreadoExiste =
                                                                  SelectedItemsRecord
                                                                      .getDocumentFromData(
                                                                          createSelectedItemsRecordData(
                                                                            item:
                                                                                cardProduct43ProductosRecord!.reference,
                                                                            name:
                                                                                cardProduct43ProductosRecord!.productName,
                                                                            description:
                                                                                cardProduct43ProductosRecord!.productDescription,
                                                                            image:
                                                                                cardProduct43ProductosRecord!.imageURL,
                                                                            price:
                                                                                cardProduct43ProductosRecord!.costo1,
                                                                            creator:
                                                                                currentUserReference,
                                                                            subTotal:
                                                                                functions.calculateSubtotal(_model.counterModel.countControllerValue, cardProduct43ProductosRecord!.costo1),
                                                                            quantity:
                                                                                _model.counterModel.countControllerValue,
                                                                          ),
                                                                          selectedItemsRecordReference1);
                                                              logFirebaseEvent(
                                                                  'Button_backend_call');

                                                              firestoreBatch.update(
                                                                  buttonCartRecord!
                                                                      .reference,
                                                                  {
                                                                    'itemCount':
                                                                        FieldValue.increment(
                                                                            valueOrDefault<int>(
                                                                      _model
                                                                          .counterModel
                                                                          .countControllerValue,
                                                                      1,
                                                                    )),
                                                                    'selectedItemsLst':
                                                                        FieldValue
                                                                            .arrayUnion([
                                                                      _model
                                                                          .produtoCreadoExiste!
                                                                          .reference
                                                                    ]),
                                                                    'amount': FieldValue.increment(_model
                                                                        .produtoCreadoExiste!
                                                                        .subTotal),
                                                                  });
                                                            } else {
                                                              logFirebaseEvent(
                                                                  'Button_backend_call');

                                                              var selectedItemsRecordReference2 =
                                                                  SelectedItemsRecord
                                                                      .collection
                                                                      .doc();
                                                              firestoreBatch.set(
                                                                  selectedItemsRecordReference2,
                                                                  createSelectedItemsRecordData(
                                                                    item: cardProduct43ProductosRecord!
                                                                        .reference,
                                                                    name: cardProduct43ProductosRecord!
                                                                        .productName,
                                                                    description:
                                                                        cardProduct43ProductosRecord!
                                                                            .productDescription,
                                                                    image: cardProduct43ProductosRecord!
                                                                        .imageURL,
                                                                    price: cardProduct43ProductosRecord!
                                                                        .costo1,
                                                                    subTotal: functions.calculateSubtotal(
                                                                        _model
                                                                            .counterModel
                                                                            .countControllerValue,
                                                                        cardProduct43ProductosRecord!
                                                                            .costo1),
                                                                    creator:
                                                                        currentUserReference,
                                                                    quantity: _model
                                                                        .counterModel
                                                                        .countControllerValue,
                                                                  ));
                                                              _model.productoCread =
                                                                  SelectedItemsRecord
                                                                      .getDocumentFromData(
                                                                          createSelectedItemsRecordData(
                                                                            item:
                                                                                cardProduct43ProductosRecord!.reference,
                                                                            name:
                                                                                cardProduct43ProductosRecord!.productName,
                                                                            description:
                                                                                cardProduct43ProductosRecord!.productDescription,
                                                                            image:
                                                                                cardProduct43ProductosRecord!.imageURL,
                                                                            price:
                                                                                cardProduct43ProductosRecord!.costo1,
                                                                            subTotal:
                                                                                functions.calculateSubtotal(_model.counterModel.countControllerValue, cardProduct43ProductosRecord!.costo1),
                                                                            creator:
                                                                                currentUserReference,
                                                                            quantity:
                                                                                _model.counterModel.countControllerValue,
                                                                          ),
                                                                          selectedItemsRecordReference2);
                                                              logFirebaseEvent(
                                                                  'Button_backend_call');

                                                              firestoreBatch.set(
                                                                  CartRecord
                                                                      .collection
                                                                      .doc(),
                                                                  {
                                                                    ...createCartRecordData(
                                                                      creator:
                                                                          currentUserReference,
                                                                      itemCount: _model
                                                                          .counterModel
                                                                          .countControllerValue,
                                                                      isActive:
                                                                          true,
                                                                      amount: functions.calculateSubtotal(
                                                                          _model
                                                                              .counterModel
                                                                              .countControllerValue,
                                                                          cardProduct43ProductosRecord!
                                                                              .costo1),
                                                                    ),
                                                                    'selectedItemsLst':
                                                                        [
                                                                      _model
                                                                          .productoCread!
                                                                          .reference
                                                                    ],
                                                                  });
                                                            }
                                                          } else {
                                                            logFirebaseEvent(
                                                                'Button_navigate_to');

                                                            context.pushNamed(
                                                                'loginPage');
                                                          }
                                                        } finally {
                                                          await firestoreBatch
                                                              .commit();
                                                        }

                                                        setState(() {});
                                                      },
                                                      text: '',
                                                      icon: Icon(
                                                        Icons.add_circle,
                                                        size: 15.0,
                                                      ),
                                                      options: FFButtonOptions(
                                                        height: 40.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                        elevation: 3.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50.0),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          AutoSizeText(
                                            formatNumber(
                                              cardProduct43ProductosRecord!
                                                  .costo1,
                                              formatType: FormatType.decimal,
                                              decimalType:
                                                  DecimalType.periodDecimal,
                                              currency: '',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF14181B),
                                                  fontSize: 24.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          Text(
                                            'Costo Normal',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          AutoSizeText(
                                            formatNumber(
                                              functions.calculateSubtotal(
                                                  valueOrDefault<int>(
                                                    _model.counterModel
                                                        .countControllerValue,
                                                    1,
                                                  ),
                                                  cardProduct43ProductosRecord!
                                                      .costo1),
                                              formatType: FormatType.decimal,
                                              decimalType:
                                                  DecimalType.periodDecimal,
                                              currency: '',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF14181B),
                                                  fontSize: 24.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          Text(
                                            'Costo Colmena',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Text(
                                          cardProduct43ProductosRecord!
                                              .productCategory,
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: Color(0xFF57636C),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.counterModel,
                                          updateCallback: () => setState(() {}),
                                          updateOnChange: true,
                                          child: CounterWidget(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
