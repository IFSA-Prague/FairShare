import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'households_model.dart';
export 'households_model.dart';

/// A drawer displaying households
class HouseholdsWidget extends StatefulWidget {
  const HouseholdsWidget({super.key});

  @override
  State<HouseholdsWidget> createState() => _HouseholdsWidgetState();
}

class _HouseholdsWidgetState extends State<HouseholdsWidget> {
  late HouseholdsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HouseholdsModel());
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
