import '/flutter_flow/flutter_flow_util.dart';
import 'edit_username_popup_widget.dart' show EditUsernamePopupWidget;
import 'package:flutter/material.dart';

class EditUsernamePopupModel extends FlutterFlowModel<EditUsernamePopupWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for newUser widget.
  FocusNode? newUserFocusNode;
  TextEditingController? newUserTextController;
  String? Function(BuildContext, String?)? newUserTextControllerValidator;
  // State field(s) for newUserConfirm widget.
  FocusNode? newUserConfirmFocusNode;
  TextEditingController? newUserConfirmTextController;
  String? Function(BuildContext, String?)?
      newUserConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    newUserFocusNode?.dispose();
    newUserTextController?.dispose();

    newUserConfirmFocusNode?.dispose();
    newUserConfirmTextController?.dispose();
  }
}
