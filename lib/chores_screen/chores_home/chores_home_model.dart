import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/profile_comp/profile_comp_widget.dart';
import '/index.dart';
import 'chores_home_widget.dart' show ChoresHomeWidget;
import 'package:flutter/material.dart';

class ChoresHomeModel extends FlutterFlowModel<ChoresHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProfileComp component.
  late ProfileCompModel profileCompModel;
  // State field(s) for Checkbox widget.
  Map<UserChoresRecord, bool> checkboxValueMap = {};
  List<UserChoresRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {
    profileCompModel = createModel(context, () => ProfileCompModel());
  }

  @override
  void dispose() {
    profileCompModel.dispose();
  }
}
