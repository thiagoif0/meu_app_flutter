import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'fotos_carousel_component_model.dart';
export 'fotos_carousel_component_model.dart';

class FotosCarouselComponentWidget extends StatefulWidget {
  const FotosCarouselComponentWidget({
    super.key,
    required this.fotos,
  });

  final List<String>? fotos;

  @override
  State<FotosCarouselComponentWidget> createState() =>
      _FotosCarouselComponentWidgetState();
}

class _FotosCarouselComponentWidgetState
    extends State<FotosCarouselComponentWidget> {
  late FotosCarouselComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FotosCarouselComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
