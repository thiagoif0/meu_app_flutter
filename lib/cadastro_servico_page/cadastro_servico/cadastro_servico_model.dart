import '/cadastro_servico_page/cadastroservicoform/cadastroservicoform_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cadastro_servico_widget.dart' show CadastroServicoWidget;
import 'package:flutter/material.dart';

class CadastroServicoModel extends FlutterFlowModel<CadastroServicoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cadastroservicoform component.
  late CadastroservicoformModel cadastroservicoformModel;

  @override
  void initState(BuildContext context) {
    cadastroservicoformModel =
        createModel(context, () => CadastroservicoformModel());
  }

  @override
  void dispose() {
    cadastroservicoformModel.dispose();
  }
}
