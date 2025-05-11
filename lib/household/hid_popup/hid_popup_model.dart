import '/flutter_flow/flutter_flow_util.dart';
import '/household/hid_code/hid_code_widget.dart';
import 'hid_popup_widget.dart' show HidPopupWidget;
import 'package:flutter/material.dart';

class HidPopupModel extends FlutterFlowModel<HidPopupWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for hid_code component.
  late HidCodeModel hidCodeModel;

  @override
  void initState(BuildContext context) {
    hidCodeModel = createModel(context, () => HidCodeModel());
  }

  @override
  void dispose() {
    hidCodeModel.dispose();
  }
}
