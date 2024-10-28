import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'bottom_nav_component_model.dart';
export 'bottom_nav_component_model.dart';

class BottomNavComponentWidget extends StatefulWidget {
  const BottomNavComponentWidget({
    super.key,
    int? selectedPageIndex,
    bool? hidden,
    bool? showCentralButton,
    this.onTapCentralButton,
  })  : selectedPageIndex = selectedPageIndex ?? 1,
        hidden = hidden ?? false,
        showCentralButton = showCentralButton ?? false;

  final int selectedPageIndex;
  final bool hidden;
  final bool showCentralButton;
  final Future Function()? onTapCentralButton;

  @override
  State<BottomNavComponentWidget> createState() =>
      _BottomNavComponentWidgetState();
}

class _BottomNavComponentWidgetState extends State<BottomNavComponentWidget>
    with TickerProviderStateMixin {
  late BottomNavComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomNavComponentModel());

    animationsMap.addAll({
      'dividerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (widget.hidden == false)
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: Container(
                width: 360.0,
                height: 70.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FlutterFlowTheme.of(context).secondary,
                      FlutterFlowTheme.of(context).tertiary
                    ],
                    stops: const [0.0, 1.0],
                    begin: const AlignmentDirectional(1.0, -1.0),
                    end: const AlignmentDirectional(-1.0, 1.0),
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: widget.selectedPageIndex == 1 ? 1.0 : 0.5,
                            child: FlutterFlowIconButton(
                              borderRadius: 30.0,
                              borderWidth: 0.0,
                              buttonSize: 50.0,
                              icon: Icon(
                                Icons.home,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                context.goNamed(
                                  'homePage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                            ),
                          ),
                          if (widget.selectedPageIndex == 1)
                            SizedBox(
                              width: 30.0,
                              child: Divider(
                                height: 2.0,
                                thickness: 2.0,
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['dividerOnPageLoadAnimation1']!),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: widget.selectedPageIndex == 2 ? 1.0 : 0.5,
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 0.0,
                              buttonSize: 50.0,
                              icon: Icon(
                                Icons.calculate_rounded,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                context.goNamed(
                                  'calculatorPage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                            ),
                          ),
                          if (widget.selectedPageIndex == 2)
                            SizedBox(
                              width: 30.0,
                              child: Divider(
                                height: 2.0,
                                thickness: 2.0,
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['dividerOnPageLoadAnimation2']!),
                        ],
                      ),
                    ),
                    if (widget.showCentralButton == true) const Spacer(),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: widget.selectedPageIndex == 3 ? 1.0 : 0.5,
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 0.0,
                              buttonSize: 50.0,
                              icon: Icon(
                                Icons.calendar_month,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                context.goNamed(
                                  'calendarPage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                            ),
                          ),
                          if (widget.selectedPageIndex == 3)
                            SizedBox(
                              width: 30.0,
                              child: Divider(
                                height: 2.0,
                                thickness: 2.0,
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['dividerOnPageLoadAnimation3']!),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: widget.selectedPageIndex == 4 ? 1.0 : 0.5,
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 0.0,
                              buttonSize: 50.0,
                              icon: Icon(
                                Icons.person_2_rounded,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                context.goNamed(
                                  'profilePage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                            ),
                          ),
                          if (widget.selectedPageIndex == 4)
                            SizedBox(
                              width: 30.0,
                              child: Divider(
                                height: 2.0,
                                thickness: 2.0,
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['dividerOnPageLoadAnimation4']!),
                        ],
                      ),
                    ),
                  ]
                      .divide(const SizedBox(width: 16.0))
                      .addToStart(const SizedBox(width: 16.0))
                      .addToEnd(const SizedBox(width: 16.0)),
                ),
              ),
            ),
          ),
        if (widget.showCentralButton == true)
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
              child: ClipOval(
                child: Container(
                  width: 70.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                      )
                    ],
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).tertiary,
                        FlutterFlowTheme.of(context).secondary
                      ],
                      stops: const [0.0, 1.0],
                      begin: const AlignmentDirectional(-1.0, 0.0),
                      end: const AlignmentDirectional(1.0, 0),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 0.0,
                    buttonSize: 10.0,
                    hoverColor: FlutterFlowTheme.of(context).secondary,
                    icon: Icon(
                      Icons.phone_enabled,
                      color: FlutterFlowTheme.of(context).info,
                      size: 36.0,
                    ),
                    onPressed: () async {
                      await widget.onTapCentralButton?.call();
                    },
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
