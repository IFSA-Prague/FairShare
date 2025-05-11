import '/flutter_flow/flutter_flow_util.dart';
import 'join_household_popup_widget.dart' show JoinHouseholdPopupWidget;
import 'package:flutter/material.dart';

class JoinHouseholdPopupModel
    extends FlutterFlowModel<JoinHouseholdPopupWidget> {
  ///  Local state fields for this component.

  String joinCodeInput = 'xxx';

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
