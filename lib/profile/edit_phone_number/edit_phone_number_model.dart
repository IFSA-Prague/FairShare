import '/flutter_flow/flutter_flow_util.dart';
import 'edit_phone_number_widget.dart' show EditPhoneNumberWidget;
import 'package:flutter/material.dart';

class EditPhoneNumberModel extends FlutterFlowModel<EditPhoneNumberWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for NewPhoneNumber widget.
  FocusNode? newPhoneNumberFocusNode;
  TextEditingController? newPhoneNumberTextController;
  String? Function(BuildContext, String?)?
      newPhoneNumberTextControllerValidator;
  // State field(s) for newPhoneNumberConfirm widget.
  FocusNode? newPhoneNumberConfirmFocusNode;
  TextEditingController? newPhoneNumberConfirmTextController;
  String? Function(BuildContext, String?)?
      newPhoneNumberConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    newPhoneNumberFocusNode?.dispose();
    newPhoneNumberTextController?.dispose();

    newPhoneNumberConfirmFocusNode?.dispose();
    newPhoneNumberConfirmTextController?.dispose();
  }
}
