import '/flutter_flow/flutter_flow_util.dart';
import 'transactions_widget.dart' show TransactionsWidget;
import 'package:flutter/material.dart';

class TransactionsModel extends FlutterFlowModel<TransactionsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
