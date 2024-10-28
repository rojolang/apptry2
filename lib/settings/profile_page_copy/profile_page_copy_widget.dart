import '/components/bottom_nav_component/bottom_nav_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'profile_page_copy_model.dart';
export 'profile_page_copy_model.dart';

class ProfilePageCopyWidget extends StatefulWidget {
  const ProfilePageCopyWidget({super.key});

  @override
  State<ProfilePageCopyWidget> createState() => _ProfilePageCopyWidgetState();
}

class _ProfilePageCopyWidgetState extends State<ProfilePageCopyWidget> {
  late ProfilePageCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfilePageCopyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryText,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            buttonSize: 46.0,
            icon: Icon(
              Icons.chevron_left_sharp,
              color: FlutterFlowTheme.of(context).primaryBackground,
              size: 25.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Settings Page',
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: wrapWithModel(
                model: _model.bottomNavComponentModel,
                updateCallback: () => safeSetState(() {}),
                child: BottomNavComponentWidget(
                  selectedPageIndex: 4,
                  hidden: false,
                  showCentralButton: false,
                  onTapCentralButton: () async {},
                ),
              ),
            ),
            Text(
              'Hello World',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    letterSpacing: 0.0,
                  ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Choose what notifcations you want to recieve below and we will update the settings.',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Material(
                    color: Colors.transparent,
                    child: SwitchListTile.adaptive(
                      value: _model.switchListTileValue1 ??= true,
                      onChanged: (newValue) async {
                        safeSetState(
                            () => _model.switchListTileValue1 = newValue);
                      },
                      title: Text(
                        'Push Notifications',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              letterSpacing: 0.0,
                              lineHeight: 2.0,
                            ),
                      ),
                      subtitle: Text(
                        'Receive Push notifications from our application on a semi regular basis.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              letterSpacing: 0.0,
                            ),
                      ),
                      tileColor: FlutterFlowTheme.of(context).primaryText,
                      activeColor: FlutterFlowTheme.of(context).secondary,
                      activeTrackColor: FlutterFlowTheme.of(context).secondary,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                      contentPadding: const EdgeInsetsDirectional.fromSTEB(
                          24.0, 12.0, 24.0, 12.0),
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: SwitchListTile.adaptive(
                    value: _model.switchListTileValue2 ??= true,
                    onChanged: (newValue) async {
                      safeSetState(
                          () => _model.switchListTileValue2 = newValue);
                    },
                    title: Text(
                      'Email Notifications',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                            lineHeight: 2.0,
                          ),
                    ),
                    subtitle: Text(
                      'Receive email notifications from our marketing team about new features.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: const Color(0xFF8B97A2),
                            letterSpacing: 0.0,
                          ),
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    activeColor: FlutterFlowTheme.of(context).primary,
                    activeTrackColor: FlutterFlowTheme.of(context).accent1,
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: SwitchListTile.adaptive(
                    value: _model.switchListTileValue3 ??= true,
                    onChanged: (newValue) async {
                      safeSetState(
                          () => _model.switchListTileValue3 = newValue);
                    },
                    title: Text(
                      'Location Services',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                            lineHeight: 2.0,
                          ),
                    ),
                    subtitle: Text(
                      'Allow us to track your location, this helps keep track of spending and keeps you safe.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: const Color(0xFF8B97A2),
                            letterSpacing: 0.0,
                          ),
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    activeColor: FlutterFlowTheme.of(context).primary,
                    activeTrackColor: FlutterFlowTheme.of(context).accent1,
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pop();
                    },
                    text: 'Change Changes',
                    options: FFButtonOptions(
                      width: 190.0,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
