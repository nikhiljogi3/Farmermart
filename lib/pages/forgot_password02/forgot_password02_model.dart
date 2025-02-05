import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_password02_widget.dart' show ForgotPassword02Widget;
import 'package:flutter/material.dart';

class ForgotPassword02Model extends FlutterFlowModel<ForgotPassword02Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
