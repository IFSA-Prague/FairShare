import '/flutter_flow/flutter_flow_util.dart';
import 'edit_household_popup_widget.dart' show EditHouseholdPopupWidget;
import 'package:flutter/material.dart';

class EditHouseholdPopupModel
    extends FlutterFlowModel<EditHouseholdPopupWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for householdName widget.
  FocusNode? householdNameFocusNode;
  TextEditingController? householdNameTextController;
  String? Function(BuildContext, String?)? householdNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    householdNameFocusNode?.dispose();
    householdNameTextController?.dispose();
  }
}
