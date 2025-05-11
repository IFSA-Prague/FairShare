import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'forgotpassword_widget.dart' show ForgotpasswordWidget;
import 'package:flutter/material.dart';

class ForgotpasswordModel extends FlutterFlowModel<ForgotpasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailForgot widget.
  FocusNode? emailForgotFocusNode;
  TextEditingController? emailForgotTextController;
  String? Function(BuildContext, String?)? emailForgotTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailForgotFocusNode?.dispose();
    emailForgotTextController?.dispose();
  }
}
