import '/components/bottom_nav_component/bottom_nav_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_page_widget.dart' show ProfilePageWidget;
import 'package:flutter/material.dart';

class ProfilePageModel extends FlutterFlowModel<ProfilePageWidget> {
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
