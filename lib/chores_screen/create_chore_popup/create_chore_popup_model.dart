import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_chore_popup_widget.dart' show CreateChorePopupWidget;
import 'package:flutter/material.dart';

class CreateChorePopupModel extends FlutterFlowModel<CreateChorePopupWidget> {
  ///  Local state fields for this component.

  ChoresRecord? selectedPresetChore;

  ///  State fields for stateful widgets in this component.

  // State field(s) for presetChores widget.
  String? presetChoresValue;
  FormFieldController<String>? presetChoresValueController;
  List<ChoresRecord>? presetChoresPreviousSnapshot;
  // Stores action output result for [Firestore Query - Query a collection] action in presetChores widget.
  ChoresRecord? presetChore;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  DateTime? datePicked;
  // State field(s) for assignee widget.
  String? assigneeValue;
  FormFieldController<String>? assigneeValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? user;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
