import '/flutter_flow/flutter_flow_util.dart';
import 'profiles_widget.dart' show ProfilesWidget;
import 'package:flutter/material.dart';

class ProfilesModel extends FlutterFlowModel<ProfilesWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
