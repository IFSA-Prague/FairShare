import '/flutter_flow/flutter_flow_util.dart';
import '/profile/profile_comp/profile_comp_widget.dart';
import 'edit_profile_pic_widget.dart' show EditProfilePicWidget;
import 'package:flutter/material.dart';

class EditProfilePicModel extends FlutterFlowModel<EditProfilePicWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ProfileComp component.
  late ProfileCompModel profileCompModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    profileCompModel = createModel(context, () => ProfileCompModel());
  }

  @override
  void dispose() {
    profileCompModel.dispose();
  }
}
