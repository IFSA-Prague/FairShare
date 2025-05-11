import '/flutter_flow/flutter_flow_util.dart';
import '/profile/profile_comp/profile_comp_widget.dart';
import 'send_money_widget.dart' show SendMoneyWidget;
import 'package:flutter/material.dart';

class SendMoneyModel extends FlutterFlowModel<SendMoneyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProfileComp component.
  late ProfileCompModel profileCompModel;

  @override
  void initState(BuildContext context) {
    profileCompModel = createModel(context, () => ProfileCompModel());
  }

  @override
  void dispose() {
    profileCompModel.dispose();
  }
}
