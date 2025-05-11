import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'join_household_popup_copy_copy_widget.dart'
    show JoinHouseholdPopupCopyCopyWidget;
import 'package:flutter/material.dart';

class JoinHouseholdPopupCopyCopyModel
    extends FlutterFlowModel<JoinHouseholdPopupCopyCopyWidget> {
  ///  Local state fields for this component.

  String joinCodeInput = 'xxx';

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textFieldTextController;
  String? Function(BuildContext, String?)? textFieldTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  HouseholdsRecord? household;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textFieldTextController?.dispose();
  }
}
