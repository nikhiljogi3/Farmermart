import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'seller_widget.dart' show SellerWidget;
import 'package:flutter/material.dart';

class SellerModel extends FlutterFlowModel<SellerWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for category widget.
  String? categoryValue1;
  FormFieldController<String>? categoryValueController1;
  // State field(s) for productname widget.
  FocusNode? productnameFocusNode;
  TextEditingController? productnameTextController;
  String? Function(BuildContext, String?)? productnameTextControllerValidator;
  // State field(s) for enterquantity widget.
  FocusNode? enterquantityFocusNode;
  TextEditingController? enterquantityTextController;
  String? Function(BuildContext, String?)? enterquantityTextControllerValidator;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for mobileno widget.
  FocusNode? mobilenoFocusNode;
  TextEditingController? mobilenoTextController;
  String? Function(BuildContext, String?)? mobilenoTextControllerValidator;
  // State field(s) for category widget.
  String? categoryValue2;
  FormFieldController<String>? categoryValueController2;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productnameFocusNode?.dispose();
    productnameTextController?.dispose();

    enterquantityFocusNode?.dispose();
    enterquantityTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    mobilenoFocusNode?.dispose();
    mobilenoTextController?.dispose();
  }
}
