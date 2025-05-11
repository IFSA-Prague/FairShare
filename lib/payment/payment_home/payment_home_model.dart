import '/flutter_flow/flutter_flow_util.dart';
import '/profile/profile_comp/profile_comp_widget.dart';
import '/index.dart';
import 'payment_home_widget.dart' show PaymentHomeWidget;
import 'package:flutter/material.dart';

class PaymentHomeModel extends FlutterFlowModel<PaymentHomeWidget> {
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
