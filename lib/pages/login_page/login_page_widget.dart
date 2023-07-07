import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'rowOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 100.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 600.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 60.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'tabBarOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: Offset(0.0, 30.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'loginPage'});
    _model.emailAddressController ??= TextEditingController();
    _model.passwordController ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
    _model.textController4 ??= TextEditingController();
    _model.textController5 ??= TextEditingController();
    _model.emailAddressCreateController ??= TextEditingController();
    _model.passwordCreateController ??= TextEditingController();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        title: 'loginPage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                alignment: AlignmentDirectional(0.0, 1.0),
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 40.0,
                          sigmaY: 40.0,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                              shape: BoxShape.rectangle,
                            ),
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 64.0, 0.0, 24.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 50.0, 0.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: CachedNetworkImage(
                                                    imageUrl:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/colmena-v1-lld98f/assets/cs69favwdbjx/C_lmena_auto_x2_colored.png',
                                                    width: 300.0,
                                                    height: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ).animateOnPageLoad(animationsMap[
                                        'rowOnPageLoadAnimation']!),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 1.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 500.0,
                                        constraints: BoxConstraints(
                                          maxWidth: 570.0,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, -1.0),
                                                child: DefaultTabController(
                                                  length: 2,
                                                  initialIndex: 0,
                                                  child: Column(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment(0.0, 0),
                                                        child: TabBar(
                                                          isScrollable: true,
                                                          labelColor:
                                                              Colors.black,
                                                          unselectedLabelColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryText,
                                                          labelPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmall,
                                                          indicatorColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                          indicatorWeight: 2.0,
                                                          tabs: [
                                                            Tab(
                                                              text: 'Sign In',
                                                            ),
                                                            Tab(
                                                              text: 'Sign Up',
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: TabBarView(
                                                          children: [
                                                            SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            20.0,
                                                                            24.0,
                                                                            0.0),
                                                                    child: Autocomplete<
                                                                        String>(
                                                                      initialValue:
                                                                          TextEditingValue(),
                                                                      optionsBuilder:
                                                                          (textEditingValue) {
                                                                        if (textEditingValue.text ==
                                                                            '') {
                                                                          return const Iterable<
                                                                              String>.empty();
                                                                        }
                                                                        return [
                                                                          'Option 1'
                                                                        ].where(
                                                                            (option) {
                                                                          final lowercaseOption =
                                                                              option.toLowerCase();
                                                                          return lowercaseOption.contains(textEditingValue
                                                                              .text
                                                                              .toLowerCase());
                                                                        });
                                                                      },
                                                                      optionsViewBuilder: (context,
                                                                          onSelected,
                                                                          options) {
                                                                        return AutocompleteOptionsList(
                                                                          textFieldKey:
                                                                              _model.emailAddressKey,
                                                                          textController:
                                                                              _model.emailAddressController!,
                                                                          options:
                                                                              options.toList(),
                                                                          onSelected:
                                                                              onSelected,
                                                                          textStyle:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                          textHighlightStyle:
                                                                              TextStyle(),
                                                                          elevation:
                                                                              4.0,
                                                                          optionBackgroundColor:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          optionHighlightColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          maxHeight:
                                                                              200.0,
                                                                        );
                                                                      },
                                                                      onSelected:
                                                                          (String
                                                                              selection) {
                                                                        setState(() =>
                                                                            _model.emailAddressSelectedOption =
                                                                                selection);
                                                                        FocusScope.of(context)
                                                                            .unfocus();
                                                                      },
                                                                      fieldViewBuilder:
                                                                          (
                                                                        context,
                                                                        textEditingController,
                                                                        focusNode,
                                                                        onEditingComplete,
                                                                      ) {
                                                                        _model.emailAddressController =
                                                                            textEditingController;
                                                                        return TextFormField(
                                                                          key: _model
                                                                              .emailAddressKey,
                                                                          controller:
                                                                              textEditingController,
                                                                          focusNode:
                                                                              focusNode,
                                                                          onEditingComplete:
                                                                              onEditingComplete,
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            labelText:
                                                                                'Email Address',
                                                                            labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: Colors.white,
                                                                                ),
                                                                            hintText:
                                                                                'Enter your email...',
                                                                            hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: Colors.white,
                                                                                ),
                                                                            enabledBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00FFFFFF),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Colors.transparent,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            errorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            filled:
                                                                                true,
                                                                            fillColor:
                                                                                Color(0xCC211C1C),
                                                                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                20.0,
                                                                                24.0,
                                                                                20.0,
                                                                                24.0),
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                          validator: _model
                                                                              .emailAddressControllerValidator
                                                                              .asValidator(context),
                                                                        );
                                                                      },
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            12.0,
                                                                            24.0,
                                                                            0.0),
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .passwordController,
                                                                      obscureText:
                                                                          !_model
                                                                              .passwordVisibility,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            'Password',
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.white,
                                                                            ),
                                                                        hintText:
                                                                            'Enter your password...',
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.white,
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00FFFFFF),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            Color(0xCC211C1C),
                                                                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            20.0,
                                                                            24.0,
                                                                            20.0,
                                                                            24.0),
                                                                        suffixIcon:
                                                                            InkWell(
                                                                          onTap: () =>
                                                                              setState(
                                                                            () =>
                                                                                _model.passwordVisibility = !_model.passwordVisibility,
                                                                          ),
                                                                          focusNode:
                                                                              FocusNode(skipTraversal: true),
                                                                          child:
                                                                              Icon(
                                                                            _model.passwordVisibility
                                                                                ? Icons.visibility_outlined
                                                                                : Icons.visibility_off_outlined,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                      validator: _model
                                                                          .passwordControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            16.0,
                                                                            24.0,
                                                                            0.0),
                                                                    child: Wrap(
                                                                      spacing:
                                                                          24.0,
                                                                      runSpacing:
                                                                          8.0,
                                                                      alignment:
                                                                          WrapAlignment
                                                                              .center,
                                                                      crossAxisAlignment:
                                                                          WrapCrossAlignment
                                                                              .center,
                                                                      direction:
                                                                          Axis.horizontal,
                                                                      runAlignment:
                                                                          WrapAlignment
                                                                              .center,
                                                                      verticalDirection:
                                                                          VerticalDirection
                                                                              .down,
                                                                      clipBehavior:
                                                                          Clip.none,
                                                                      children: [
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            logFirebaseEvent('LOGIN_Button-ForgotPassword_ON_TAP');
                                                                            logFirebaseEvent('Button-ForgotPassword_navigate_to');

                                                                            context.pushNamed('HomePage');
                                                                          },
                                                                          text:
                                                                              'Forgot Password?',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                140.0,
                                                                            height:
                                                                                40.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                Color(0xFFA2A9B2),
                                                                            textStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: Colors.white,
                                                                                  fontSize: 12.0,
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(50.0),
                                                                          ),
                                                                        ),
                                                                        FutureBuilder<
                                                                            ApiCallResponse>(
                                                                          future:
                                                                              JwtCall.call(),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            final buttonLoginJwtResponse =
                                                                                snapshot.data!;
                                                                            return FFButtonWidget(
                                                                              onPressed: () async {
                                                                                logFirebaseEvent('LOGIN_PAGE_PAGE_Button-Login_ON_TAP');
                                                                                logFirebaseEvent('Button-Login_backend_call');
                                                                                _model.apiResult5iq = await JwtCall.call(
                                                                                  emailAddress: _model.emailAddressSelectedOption,
                                                                                  password: _model.passwordController.text,
                                                                                );
                                                                                if ((_model.apiResult5iq?.succeeded ?? true)) {
                                                                                  logFirebaseEvent('Button-Login_auth');
                                                                                  GoRouter.of(context).prepareAuthEvent();
                                                                                  final user = await authManager.signInWithJwtToken(
                                                                                    context,
                                                                                    buttonLoginJwtResponse.succeeded.toString(),
                                                                                  );
                                                                                  if (user == null) {
                                                                                    return;
                                                                                  }

                                                                                  logFirebaseEvent('Button-Login_navigate_to');

                                                                                  context.pushNamedAuth('HomePage', context.mounted);
                                                                                } else {
                                                                                  logFirebaseEvent('Button-Login_navigate_back');
                                                                                  context.safePop();
                                                                                }

                                                                                setState(() {});
                                                                              },
                                                                              text: 'Sign In',
                                                                              options: FFButtonOptions(
                                                                                width: 130.0,
                                                                                height: 50.0,
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: FlutterFlowTheme.of(context).secondary,
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                elevation: 3.0,
                                                                                borderSide: BorderSide(
                                                                                  color: Colors.transparent,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(60.0),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              20.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Or use a social account to login',
                                                                                  style: FlutterFlowTheme.of(context).bodySmall,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              8.0,
                                                                              8.0,
                                                                              8.0),
                                                                          child:
                                                                              FlutterFlowIconButton(
                                                                            borderColor:
                                                                                FlutterFlowTheme.of(context).accent4,
                                                                            borderRadius:
                                                                                12.0,
                                                                            borderWidth:
                                                                                1.0,
                                                                            buttonSize:
                                                                                44.0,
                                                                            icon:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.google,
                                                                              color: Color(0xFF100F0F),
                                                                              size: 16.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              logFirebaseEvent('LOGIN_PAGE_PAGE_google_ICN_ON_TAP');
                                                                              logFirebaseEvent('IconButton_auth');
                                                                              GoRouter.of(context).prepareAuthEvent();
                                                                              final user = await authManager.signInWithGoogle(context);
                                                                              if (user == null) {
                                                                                return;
                                                                              }

                                                                              context.goNamedAuth('HomePage', context.mounted);
                                                                            },
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              8.0,
                                                                              8.0,
                                                                              8.0),
                                                                          child:
                                                                              FlutterFlowIconButton(
                                                                            borderColor:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            borderRadius:
                                                                                12.0,
                                                                            borderWidth:
                                                                                1.0,
                                                                            buttonSize:
                                                                                44.0,
                                                                            icon:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.apple,
                                                                              color: Color(0xFF100F0F),
                                                                              size: 16.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              logFirebaseEvent('LOGIN_PAGE_PAGE_apple_ICN_ON_TAP');
                                                                              logFirebaseEvent('IconButton_auth');
                                                                              GoRouter.of(context).prepareAuthEvent();
                                                                              final user = await authManager.signInWithApple(context);
                                                                              if (user == null) {
                                                                                return;
                                                                              }

                                                                              context.goNamedAuth('HomePage', context.mounted);
                                                                            },
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              8.0,
                                                                              8.0,
                                                                              8.0),
                                                                          child:
                                                                              FlutterFlowIconButton(
                                                                            borderColor:
                                                                                FlutterFlowTheme.of(context).accent4,
                                                                            borderRadius:
                                                                                12.0,
                                                                            borderWidth:
                                                                                1.0,
                                                                            buttonSize:
                                                                                44.0,
                                                                            hoverColor:
                                                                                Color(0xFF100F0F),
                                                                            hoverIconColor:
                                                                                Color(0xFFA2A9B2),
                                                                            icon:
                                                                                Icon(
                                                                              Icons.supervisor_account_outlined,
                                                                              color: Colors.black,
                                                                              size: 20.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              logFirebaseEvent('LOGIN_supervisor_account_outlined_ICN_ON');
                                                                              logFirebaseEvent('IconButton_auth');
                                                                              GoRouter.of(context).prepareAuthEvent();
                                                                              final user = await authManager.signInAnonymously(context);
                                                                              if (user == null) {
                                                                                return;
                                                                              }

                                                                              context.goNamedAuth('HomePage', context.mounted);
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          24.0,
                                                                          15.0,
                                                                          24.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            1120.0,
                                                                        child: Autocomplete<
                                                                            String>(
                                                                          initialValue:
                                                                              TextEditingValue(),
                                                                          optionsBuilder:
                                                                              (textEditingValue) {
                                                                            if (textEditingValue.text ==
                                                                                '') {
                                                                              return const Iterable<String>.empty();
                                                                            }
                                                                            return [
                                                                              'Option 1'
                                                                            ].where((option) {
                                                                              final lowercaseOption = option.toLowerCase();
                                                                              return lowercaseOption.contains(textEditingValue.text.toLowerCase());
                                                                            });
                                                                          },
                                                                          optionsViewBuilder: (context,
                                                                              onSelected,
                                                                              options) {
                                                                            return AutocompleteOptionsList(
                                                                              textFieldKey: _model.textFieldKey1,
                                                                              textController: _model.textController3!,
                                                                              options: options.toList(),
                                                                              onSelected: onSelected,
                                                                              textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                              textHighlightStyle: TextStyle(),
                                                                              elevation: 4.0,
                                                                              optionBackgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                              optionHighlightColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              maxHeight: 200.0,
                                                                            );
                                                                          },
                                                                          onSelected:
                                                                              (String selection) {
                                                                            setState(() =>
                                                                                _model.textFieldSelectedOption1 = selection);
                                                                            FocusScope.of(context).unfocus();
                                                                          },
                                                                          fieldViewBuilder:
                                                                              (
                                                                            context,
                                                                            textEditingController,
                                                                            focusNode,
                                                                            onEditingComplete,
                                                                          ) {
                                                                            _model.textController3 =
                                                                                textEditingController;
                                                                            return TextFormField(
                                                                              key: _model.textFieldKey1,
                                                                              controller: textEditingController,
                                                                              focusNode: focusNode,
                                                                              onEditingComplete: onEditingComplete,
                                                                              autofocus: true,
                                                                              textCapitalization: TextCapitalization.words,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: 'Nombre',
                                                                                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Colors.white,
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                hintText: 'Nombre',
                                                                                hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                enabledBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                errorBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedErrorBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                filled: true,
                                                                                fillColor: Color(0xCC211C1C),
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                prefixIcon: Icon(
                                                                                  Icons.person,
                                                                                ),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  ),
                                                                              textAlign: TextAlign.start,
                                                                              keyboardType: TextInputType.name,
                                                                              validator: _model.textController3Validator.asValidator(context),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          24.0,
                                                                          10.0,
                                                                          24.0,
                                                                          10.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            1120.0,
                                                                        child: Autocomplete<
                                                                            String>(
                                                                          initialValue:
                                                                              TextEditingValue(),
                                                                          optionsBuilder:
                                                                              (textEditingValue) {
                                                                            if (textEditingValue.text ==
                                                                                '') {
                                                                              return const Iterable<String>.empty();
                                                                            }
                                                                            return [
                                                                              'Option 1'
                                                                            ].where((option) {
                                                                              final lowercaseOption = option.toLowerCase();
                                                                              return lowercaseOption.contains(textEditingValue.text.toLowerCase());
                                                                            });
                                                                          },
                                                                          optionsViewBuilder: (context,
                                                                              onSelected,
                                                                              options) {
                                                                            return AutocompleteOptionsList(
                                                                              textFieldKey: _model.textFieldKey2,
                                                                              textController: _model.textController4!,
                                                                              options: options.toList(),
                                                                              onSelected: onSelected,
                                                                              textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                              textHighlightStyle: TextStyle(),
                                                                              elevation: 4.0,
                                                                              optionBackgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                              optionHighlightColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              maxHeight: 200.0,
                                                                            );
                                                                          },
                                                                          onSelected:
                                                                              (String selection) {
                                                                            setState(() =>
                                                                                _model.textFieldSelectedOption2 = selection);
                                                                            FocusScope.of(context).unfocus();
                                                                          },
                                                                          fieldViewBuilder:
                                                                              (
                                                                            context,
                                                                            textEditingController,
                                                                            focusNode,
                                                                            onEditingComplete,
                                                                          ) {
                                                                            _model.textController4 =
                                                                                textEditingController;
                                                                            return TextFormField(
                                                                              key: _model.textFieldKey2,
                                                                              controller: textEditingController,
                                                                              focusNode: focusNode,
                                                                              onEditingComplete: onEditingComplete,
                                                                              autofocus: true,
                                                                              textCapitalization: TextCapitalization.words,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: 'Apellido',
                                                                                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Colors.white,
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                hintText: 'Apellido',
                                                                                hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                enabledBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                errorBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedErrorBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                filled: true,
                                                                                fillColor: Color(0xCC211C1C),
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                prefixIcon: Icon(
                                                                                  Icons.person,
                                                                                ),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  ),
                                                                              textAlign: TextAlign.start,
                                                                              keyboardType: TextInputType.name,
                                                                              validator: _model.textController4Validator.asValidator(context),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          24.0,
                                                                          10.0,
                                                                          24.0,
                                                                          10.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            1120.0,
                                                                        child: Autocomplete<
                                                                            String>(
                                                                          initialValue:
                                                                              TextEditingValue(),
                                                                          optionsBuilder:
                                                                              (textEditingValue) {
                                                                            if (textEditingValue.text ==
                                                                                '') {
                                                                              return const Iterable<String>.empty();
                                                                            }
                                                                            return [
                                                                              'Option 1'
                                                                            ].where((option) {
                                                                              final lowercaseOption = option.toLowerCase();
                                                                              return lowercaseOption.contains(textEditingValue.text.toLowerCase());
                                                                            });
                                                                          },
                                                                          optionsViewBuilder: (context,
                                                                              onSelected,
                                                                              options) {
                                                                            return AutocompleteOptionsList(
                                                                              textFieldKey: _model.textFieldKey3,
                                                                              textController: _model.textController5!,
                                                                              options: options.toList(),
                                                                              onSelected: onSelected,
                                                                              textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                              textHighlightStyle: TextStyle(),
                                                                              elevation: 4.0,
                                                                              optionBackgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                              optionHighlightColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              maxHeight: 200.0,
                                                                            );
                                                                          },
                                                                          onSelected:
                                                                              (String selection) {
                                                                            setState(() =>
                                                                                _model.textFieldSelectedOption3 = selection);
                                                                            FocusScope.of(context).unfocus();
                                                                          },
                                                                          fieldViewBuilder:
                                                                              (
                                                                            context,
                                                                            textEditingController,
                                                                            focusNode,
                                                                            onEditingComplete,
                                                                          ) {
                                                                            _model.textController5 =
                                                                                textEditingController;
                                                                            return TextFormField(
                                                                              key: _model.textFieldKey3,
                                                                              controller: textEditingController,
                                                                              focusNode: focusNode,
                                                                              onEditingComplete: onEditingComplete,
                                                                              autofocus: true,
                                                                              textCapitalization: TextCapitalization.none,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: 'Teléfono\n',
                                                                                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Colors.white,
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                hintText: 'Teléfono',
                                                                                hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                enabledBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                errorBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedErrorBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                filled: true,
                                                                                fillColor: Color(0xCC211C1C),
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                prefixIcon: Icon(
                                                                                  Icons.person,
                                                                                ),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  ),
                                                                              textAlign: TextAlign.start,
                                                                              keyboardType: TextInputType.phone,
                                                                              validator: _model.textController5Validator.asValidator(context),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            10.0,
                                                                            24.0,
                                                                            10.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          1120.0,
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.emailAddressCreateController,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelText:
                                                                              'Correo ',
                                                                          labelStyle: FlutterFlowTheme.of(context)
                                                                              .bodySmall
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                color: Colors.white,
                                                                              ),
                                                                          hintText:
                                                                              'Ingresa tu correo...',
                                                                          hintStyle: FlutterFlowTheme.of(context)
                                                                              .bodySmall
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                color: Colors.white,
                                                                              ),
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          errorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          filled:
                                                                              true,
                                                                          fillColor:
                                                                              Color(0xCC211C1C),
                                                                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              24.0,
                                                                              20.0,
                                                                              24.0),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                        validator: _model
                                                                            .emailAddressCreateControllerValidator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            10.0,
                                                                            24.0,
                                                                            10.0),
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .passwordCreateController,
                                                                      obscureText:
                                                                          !_model
                                                                              .passwordCreateVisibility,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            'Password',
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.white,
                                                                            ),
                                                                        hintText:
                                                                            'Ingresa tu contraseña...',
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.white,
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            Color(0xCC211C1C),
                                                                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            20.0,
                                                                            24.0,
                                                                            20.0,
                                                                            24.0),
                                                                        suffixIcon:
                                                                            InkWell(
                                                                          onTap: () =>
                                                                              setState(
                                                                            () =>
                                                                                _model.passwordCreateVisibility = !_model.passwordCreateVisibility,
                                                                          ),
                                                                          focusNode:
                                                                              FocusNode(skipTraversal: true),
                                                                          child:
                                                                              Icon(
                                                                            _model.passwordCreateVisibility
                                                                                ? Icons.visibility_outlined
                                                                                : Icons.visibility_off_outlined,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                      validator: _model
                                                                          .passwordCreateControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            16.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        FFButtonWidget(
                                                                      onPressed:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'LOGIN_PAGE_PAGE_Button-Login_ON_TAP');
                                                                        logFirebaseEvent(
                                                                            'Button-Login_navigate_to');

                                                                        context.pushNamedAuth(
                                                                            'HomePage',
                                                                            context.mounted);

                                                                        logFirebaseEvent(
                                                                            'Button-Login_auth');
                                                                        GoRouter.of(context)
                                                                            .prepareAuthEvent();

                                                                        final user =
                                                                            await authManager.createAccountWithEmail(
                                                                          context,
                                                                          _model
                                                                              .emailAddressCreateController
                                                                              .text,
                                                                          _model
                                                                              .passwordCreateController
                                                                              .text,
                                                                        );
                                                                        if (user ==
                                                                            null) {
                                                                          return;
                                                                        }
                                                                      },
                                                                      text:
                                                                          'Create Account',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        width:
                                                                            190.0,
                                                                        height:
                                                                            50.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                        textStyle:
                                                                            FlutterFlowTheme.of(context).titleSmall,
                                                                        elevation:
                                                                            3.0,
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.transparent,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(50.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            20.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              12.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Sign up using a social account',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodySmall,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              8.0,
                                                                              8.0,
                                                                              8.0),
                                                                          child:
                                                                              FlutterFlowIconButton(
                                                                            borderColor:
                                                                                FlutterFlowTheme.of(context).accent4,
                                                                            borderRadius:
                                                                                12.0,
                                                                            borderWidth:
                                                                                1.0,
                                                                            buttonSize:
                                                                                44.0,
                                                                            fillColor:
                                                                                Color(0x00FFFFFF),
                                                                            icon:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.google,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 16.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              logFirebaseEvent('LOGIN_PAGE_PAGE_google_ICN_ON_TAP');
                                                                              logFirebaseEvent('IconButton_auth');
                                                                              GoRouter.of(context).prepareAuthEvent();
                                                                              final user = await authManager.signInWithGoogle(context);
                                                                              if (user == null) {
                                                                                return;
                                                                              }

                                                                              context.goNamedAuth('HomePage', context.mounted);
                                                                            },
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              8.0,
                                                                              8.0,
                                                                              8.0),
                                                                          child:
                                                                              FlutterFlowIconButton(
                                                                            borderColor:
                                                                                Colors.white,
                                                                            borderRadius:
                                                                                12.0,
                                                                            borderWidth:
                                                                                1.0,
                                                                            buttonSize:
                                                                                44.0,
                                                                            fillColor:
                                                                                Color(0x00FFFFFF),
                                                                            icon:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.apple,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 16.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              logFirebaseEvent('LOGIN_PAGE_PAGE_apple_ICN_ON_TAP');
                                                                              logFirebaseEvent('IconButton_auth');
                                                                              GoRouter.of(context).prepareAuthEvent();
                                                                              final user = await authManager.signInWithApple(context);
                                                                              if (user == null) {
                                                                                return;
                                                                              }

                                                                              context.goNamedAuth('HomePage', context.mounted);
                                                                            },
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              8.0,
                                                                              8.0,
                                                                              8.0),
                                                                          child:
                                                                              FlutterFlowIconButton(
                                                                            borderColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            borderRadius:
                                                                                12.0,
                                                                            borderWidth:
                                                                                1.0,
                                                                            buttonSize:
                                                                                44.0,
                                                                            fillColor:
                                                                                Color(0x00FFFFFF),
                                                                            icon:
                                                                                Icon(
                                                                              Icons.supervisor_account_outlined,
                                                                              color: Color(0xFF100F0F),
                                                                              size: 20.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              logFirebaseEvent('LOGIN_supervisor_account_outlined_ICN_ON');
                                                                              logFirebaseEvent('IconButton_auth');
                                                                              GoRouter.of(context).prepareAuthEvent();
                                                                              final user = await authManager.signInAnonymously(context);
                                                                              if (user == null) {
                                                                                return;
                                                                              }

                                                                              context.goNamedAuth('HomePage', context.mounted);
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'tabBarOnPageLoadAnimation']!),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'LOGIN_LUEGO_ME_INSCRIBO_BTN_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'Button_navigate_to');

                                                              context.pushNamed(
                                                                  'HomePage');
                                                            },
                                                            text:
                                                                'Luego me inscribo',
                                                            options:
                                                                FFButtonOptions(
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .tertiary,
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
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation']!),
                                    ),
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                  ))
                                    Container(
                                      width: 200.0,
                                      height: 200.0,
                                      decoration: BoxDecoration(),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
