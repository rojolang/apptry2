import '/components/bottom_nav_component/bottom_nav_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'calendar_page_widget.dart' show CalendarPageWidget;
import 'package:flutter/material.dart';

class CalendarPageModel extends FlutterFlowModel<CalendarPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BottomNavComponent component.
  late BottomNavComponentModel bottomNavComponentModel;

  @override
  void initState(BuildContext context) {
    bottomNavComponentModel =
        createModel(context, () => BottomNavComponentModel());
  }

  @override
  void dispose() {
    bottomNavComponentModel.dispose();
  }
}
