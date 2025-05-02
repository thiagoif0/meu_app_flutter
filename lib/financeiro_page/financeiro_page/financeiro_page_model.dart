import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'financeiro_page_widget.dart' show FinanceiroPageWidget;
import 'package:flutter/material.dart';

class FinanceiroPageModel extends FlutterFlowModel<FinanceiroPageWidget> {
  ///  Local state fields for this page.

  double receitaMes = 0.0;

  double receitaAno = 0.0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in FinanceiroPage widget.
  List<ServicosRecord>? servicosDoMes;
  // Stores action output result for [Firestore Query - Query a collection] action in FinanceiroPage widget.
  List<ServicosRecord>? servicosDoAno;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
