import '/flutter_flow/flutter_flow_util.dart';
import '/profile/profile_comp/profile_comp_widget.dart';
import '/index.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProfileComp component.
  late ProfileCompModel profileCompModel1;
  // Model for ProfileComp component.
  late ProfileCompModel profileCompModel2;

  @override
  void initState(BuildContext context) {
    profileCompModel1 = createModel(context, () => ProfileCompModel());
    profileCompModel2 = createModel(context, () => ProfileCompModel());
  }

  @override
  void dispose() {
    profileCompModel1.dispose();
    profileCompModel2.dispose();
  }
}
