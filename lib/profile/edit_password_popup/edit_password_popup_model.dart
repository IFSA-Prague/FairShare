import '/flutter_flow/flutter_flow_util.dart';
import 'edit_password_popup_widget.dart' show EditPasswordPopupWidget;
import 'package:flutter/material.dart';

class EditPasswordPopupModel extends FlutterFlowModel<EditPasswordPopupWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for newPassword widget.
  FocusNode? newPasswordFocusNode;
  TextEditingController? newPasswordTextController;
  String? Function(BuildContext, String?)? newPasswordTextControllerValidator;
  // State field(s) for newPasswordConfirm widget.
  FocusNode? newPasswordConfirmFocusNode;
  TextEditingController? newPasswordConfirmTextController;
  String? Function(BuildContext, String?)?
      newPasswordConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    newPasswordFocusNode?.dispose();
    newPasswordTextController?.dispose();

    newPasswordConfirmFocusNode?.dispose();
    newPasswordConfirmTextController?.dispose();
  }
}
