import '/components/bottom_nav_component/bottom_nav_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'calculator_page_model.dart';
export 'calculator_page_model.dart';

class CalculatorPageWidget extends StatefulWidget {
  const CalculatorPageWidget({super.key});

  @override
  State<CalculatorPageWidget> createState() => _CalculatorPageWidgetState();
}

class _CalculatorPageWidgetState extends State<CalculatorPageWidget> {
  late CalculatorPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalculatorPageModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.bottomNavComponentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: BottomNavComponentWidget(
                    selectedPageIndex: 2,
                    hidden: false,
                    showCentralButton: true,
                    onTapCentralButton: () async {
                      var confirmDialogResponse = await showDialog<bool>(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: const Text('Need Help?'),
                                content: const Text(
                                    'Do you need help with your benefits?'),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(
                                        alertDialogContext, false),
                                    child: const Text('No'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext, true),
                                    child: const Text('Yes!'),
                                  ),
                                ],
                              );
                            },
                          ) ??
                          false;
                      if (confirmDialogResponse) {
                        await launchUrl(Uri(
                          scheme: 'tel',
                          path: '8182163842',
                        ));
                      } else {
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
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
