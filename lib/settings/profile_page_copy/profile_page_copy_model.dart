import '/components/bottom_nav_component/bottom_nav_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_page_copy_widget.dart' show ProfilePageCopyWidget;
import 'package:flutter/material.dart';

class ProfilePageCopyModel extends FlutterFlowModel<ProfilePageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BottomNavComponent component.
  late BottomNavComponentModel bottomNavComponentModel;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue1;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue2;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue3;

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
