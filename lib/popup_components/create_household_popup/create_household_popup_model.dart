import '/flutter_flow/flutter_flow_util.dart';
import 'create_household_popup_widget.dart' show CreateHouseholdPopupWidget;
import 'package:flutter/material.dart';

class CreateHouseholdPopupModel
    extends FlutterFlowModel<CreateHouseholdPopupWidget> {
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
