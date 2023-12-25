import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sidebar_model.dart';
export 'sidebar_model.dart';

class SidebarWidget extends StatefulWidget {
  const SidebarWidget({
    Key? key,
    required this.page,
  }) : super(key: key);

  final int? page;

  @override
  _SidebarWidgetState createState() => _SidebarWidgetState();
}

class _SidebarWidgetState extends State<SidebarWidget> {
  late SidebarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SidebarModel());

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

    return Visibility(
      visible: responsiveVisibility(
        context: context,
        phone: false,
        tablet: false,
      ),
      child: Container(
        width: 300.0,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF8E30E6),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/Scale360_jb_LOGO_B_(1).jpg',
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              MouseRegion(
                opaque: false,
                cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (valueOrDefault(currentUserDocument?.role, '') ==
                        'Admin') {
                      context.pushNamed(
                        'admin',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    } else {
                      context.pushNamed(
                        'dashboard',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        () {
                          if (_model.mouseRegionHovered1!) {
                            return FlutterFlowTheme.of(context)
                                .primaryBackground;
                          } else if (widget.page == 1) {
                            return FlutterFlowTheme.of(context)
                                .primaryBackground;
                          } else {
                            return Color(0xFF8E30E6);
                          }
                        }(),
                        Color(0xFF8E30E6),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.dashboard_sharp,
                            color: Color(0xFFF9D80F),
                            size: 24.0,
                          ),
                          Text(
                            'Dashboard',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: valueOrDefault<Color>(
                                    () {
                                      if (widget.page == 1) {
                                        return FlutterFlowTheme.of(context)
                                            .primaryText;
                                      } else if (_model.mouseRegionHovered1!) {
                                        return FlutterFlowTheme.of(context)
                                            .primaryText;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .secondaryBackground;
                                      }
                                    }(),
                                    FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ].divide(SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                ),
                onEnter: ((event) async {
                  setState(() => _model.mouseRegionHovered1 = true);
                }),
                onExit: ((event) async {
                  setState(() => _model.mouseRegionHovered1 = false);
                }),
              ),
              MouseRegion(
                opaque: false,
                cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if ((valueOrDefault(currentUserDocument?.role, '') ==
                            'Admin') ||
                        (valueOrDefault(currentUserDocument?.role, '') ==
                            'Teacher')) {
                      context.goNamed(
                        'teachercourse',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    } else {
                      context.goNamed(
                        'Mycourses',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        () {
                          if (_model.mouseRegionHovered2!) {
                            return FlutterFlowTheme.of(context)
                                .primaryBackground;
                          } else if (widget.page == 2) {
                            return FlutterFlowTheme.of(context)
                                .primaryBackground;
                          } else {
                            return Color(0xFF8E30E6);
                          }
                        }(),
                        Color(0xFF8E30E6),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.menu_book_sharp,
                            color: Color(0xFFF9D80F),
                            size: 24.0,
                          ),
                          Text(
                            (FFAppState().role == 'Admin') ||
                                    (FFAppState().role == 'Teacher')
                                ? 'Courses'
                                : 'My course',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: valueOrDefault<Color>(
                                    () {
                                      if (widget.page == 2) {
                                        return FlutterFlowTheme.of(context)
                                            .primaryText;
                                      } else if (_model.mouseRegionHovered2!) {
                                        return FlutterFlowTheme.of(context)
                                            .primaryText;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .secondaryBackground;
                                      }
                                    }(),
                                    FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ].divide(SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                ),
                onEnter: ((event) async {
                  setState(() => _model.mouseRegionHovered2 = true);
                }),
                onExit: ((event) async {
                  setState(() => _model.mouseRegionHovered2 = false);
                }),
              ),
              MouseRegion(
                opaque: false,
                cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'assigments',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        () {
                          if (_model.mouseRegionHovered3!) {
                            return FlutterFlowTheme.of(context)
                                .primaryBackground;
                          } else if (widget.page == 3) {
                            return FlutterFlowTheme.of(context)
                                .primaryBackground;
                          } else {
                            return Color(0xFF8E30E6);
                          }
                        }(),
                        Color(0xFF8E30E6),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.assignment_sharp,
                            color: Color(0xFFF9D80F),
                            size: 24.0,
                          ),
                          Text(
                            'Assignments',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: valueOrDefault<Color>(
                                    () {
                                      if (widget.page == 3) {
                                        return FlutterFlowTheme.of(context)
                                            .primaryText;
                                      } else if (_model.mouseRegionHovered3!) {
                                        return FlutterFlowTheme.of(context)
                                            .primaryText;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .secondaryBackground;
                                      }
                                    }(),
                                    FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ].divide(SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                ),
                onEnter: ((event) async {
                  setState(() => _model.mouseRegionHovered3 = true);
                }),
                onExit: ((event) async {
                  setState(() => _model.mouseRegionHovered3 = false);
                }),
              ),
              if ((valueOrDefault(currentUserDocument?.role, '') == 'Admin') ||
                  (valueOrDefault(currentUserDocument?.role, '') == 'Teacher'))
                AuthUserStreamWidget(
                  builder: (context) => MouseRegion(
                    opaque: false,
                    cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'users',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            () {
                              if (_model.mouseRegionHovered4!) {
                                return FlutterFlowTheme.of(context)
                                    .primaryBackground;
                              } else if (widget.page == 4) {
                                return FlutterFlowTheme.of(context)
                                    .primaryBackground;
                              } else {
                                return Color(0xFF8E30E6);
                              }
                            }(),
                            Color(0xFF8E30E6),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.users,
                                color: Color(0xFFF9D80F),
                                size: 24.0,
                              ),
                              Text(
                                'Students',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: valueOrDefault<Color>(
                                        () {
                                          if (widget.page == 4) {
                                            return FlutterFlowTheme.of(context)
                                                .primaryText;
                                          } else if (_model
                                              .mouseRegionHovered4!) {
                                            return FlutterFlowTheme.of(context)
                                                .primaryText;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryBackground;
                                          }
                                        }(),
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ].divide(SizedBox(width: 10.0)),
                          ),
                        ),
                      ),
                    ),
                    onEnter: ((event) async {
                      setState(() => _model.mouseRegionHovered4 = true);
                    }),
                    onExit: ((event) async {
                      setState(() => _model.mouseRegionHovered4 = false);
                    }),
                  ),
                ),
              MouseRegion(
                opaque: false,
                cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      () {
                        if (_model.mouseRegionHovered5!) {
                          return FlutterFlowTheme.of(context).primaryBackground;
                        } else if (widget.page == 5) {
                          return FlutterFlowTheme.of(context).primaryBackground;
                        } else {
                          return Color(0xFF8E30E6);
                        }
                      }(),
                      Color(0xFF8E30E6),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.factory,
                          color: Color(0xFFF9D80F),
                          size: 24.0,
                        ),
                        Text(
                          'Faculty',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: valueOrDefault<Color>(
                                  () {
                                    if (widget.page == 5) {
                                      return FlutterFlowTheme.of(context)
                                          .primaryText;
                                    } else if (_model.mouseRegionHovered5!) {
                                      return FlutterFlowTheme.of(context)
                                          .primaryText;
                                    } else {
                                      return FlutterFlowTheme.of(context)
                                          .secondaryBackground;
                                    }
                                  }(),
                                  FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ].divide(SizedBox(width: 10.0)),
                    ),
                  ),
                ),
                onEnter: ((event) async {
                  setState(() => _model.mouseRegionHovered5 = true);
                }),
                onExit: ((event) async {
                  setState(() => _model.mouseRegionHovered5 = false);
                }),
              ),
              if ((valueOrDefault(currentUserDocument?.role, '') == 'Admin') ||
                  (valueOrDefault(currentUserDocument?.role, '') == 'Teacher'))
                AuthUserStreamWidget(
                  builder: (context) => MouseRegion(
                    opaque: false,
                    cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'School',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            () {
                              if (_model.mouseRegionHovered6!) {
                                return FlutterFlowTheme.of(context)
                                    .primaryBackground;
                              } else if (widget.page == 7) {
                                return FlutterFlowTheme.of(context)
                                    .primaryBackground;
                              } else {
                                return Color(0xFF8E30E6);
                              }
                            }(),
                            Color(0xFF8E30E6),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.school_rounded,
                                color: Color(0xFFF9D80F),
                                size: 24.0,
                              ),
                              Text(
                                'Schools',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: valueOrDefault<Color>(
                                        () {
                                          if (widget.page == 7) {
                                            return FlutterFlowTheme.of(context)
                                                .primaryText;
                                          } else if (_model
                                              .mouseRegionHovered6!) {
                                            return FlutterFlowTheme.of(context)
                                                .primaryText;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryBackground;
                                          }
                                        }(),
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ].divide(SizedBox(width: 10.0)),
                          ),
                        ),
                      ),
                    ),
                    onEnter: ((event) async {
                      setState(() => _model.mouseRegionHovered6 = true);
                    }),
                    onExit: ((event) async {
                      setState(() => _model.mouseRegionHovered6 = false);
                    }),
                  ),
                ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).secondaryText,
              ),
              MouseRegion(
                opaque: false,
                cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'payment',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        () {
                          if (_model.mouseRegionHovered7!) {
                            return FlutterFlowTheme.of(context)
                                .primaryBackground;
                          } else if (widget.page == 8) {
                            return FlutterFlowTheme.of(context)
                                .primaryBackground;
                          } else {
                            return Color(0xFF8E30E6);
                          }
                        }(),
                        Color(0xFF8E30E6),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.amazonPay,
                            color: Color(0xFFF9D80F),
                            size: 24.0,
                          ),
                          Text(
                            'Payment',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: valueOrDefault<Color>(
                                    () {
                                      if (widget.page == 8) {
                                        return FlutterFlowTheme.of(context)
                                            .primaryText;
                                      } else if (_model.mouseRegionHovered7!) {
                                        return FlutterFlowTheme.of(context)
                                            .primaryText;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .secondaryBackground;
                                      }
                                    }(),
                                    FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ].divide(SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                ),
                onEnter: ((event) async {
                  setState(() => _model.mouseRegionHovered7 = true);
                }),
                onExit: ((event) async {
                  setState(() => _model.mouseRegionHovered7 = false);
                }),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                child: MouseRegion(
                  opaque: false,
                  cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'Settings1Notifications',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          () {
                            if (_model.mouseRegionHovered8!) {
                              return FlutterFlowTheme.of(context)
                                  .primaryBackground;
                            } else if (widget.page == 9) {
                              return FlutterFlowTheme.of(context)
                                  .primaryBackground;
                            } else {
                              return Color(0xFF8E30E6);
                            }
                          }(),
                          Color(0xFF8E30E6),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.settings_outlined,
                              color: Color(0xFFF9D80F),
                              size: 24.0,
                            ),
                            Text(
                              'Settings',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: valueOrDefault<Color>(
                                      () {
                                        if (widget.page == 9) {
                                          return FlutterFlowTheme.of(context)
                                              .primaryText;
                                        } else if (_model
                                            .mouseRegionHovered8!) {
                                          return FlutterFlowTheme.of(context)
                                              .primaryText;
                                        } else {
                                          return FlutterFlowTheme.of(context)
                                              .secondaryBackground;
                                        }
                                      }(),
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ].divide(SizedBox(width: 10.0)),
                        ),
                      ),
                    ),
                  ),
                  onEnter: ((event) async {
                    setState(() => _model.mouseRegionHovered8 = true);
                  }),
                  onExit: ((event) async {
                    setState(() => _model.mouseRegionHovered8 = false);
                  }),
                ),
              ),
            ].divide(SizedBox(height: 40.0)),
          ),
        ),
      ),
    );
  }
}
