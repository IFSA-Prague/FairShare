import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/payment/user_money/user_money_widget.dart';
import '/profile/profile_comp/profile_comp_widget.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.
  Map<UserChoresRecord, bool> checkboxValueMap = {};
  List<UserChoresRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  // Model for User_Money component.
  late UserMoneyModel userMoneyModel;
  // Model for ProfileComp component.
  late ProfileCompModel profileCompModel;

  @override
  void initState(BuildContext context) {
    userMoneyModel = createModel(context, () => UserMoneyModel());
    profileCompModel = createModel(context, () => ProfileCompModel());
  }

  @override
  void dispose() {
    userMoneyModel.dispose();
    profileCompModel.dispose();
  }
}
