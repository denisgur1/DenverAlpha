import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'diet_item_model.dart';
export 'diet_item_model.dart';

class DietItemWidget extends StatefulWidget {
  const DietItemWidget({
    super.key,
    required this.workoutType,
    required this.selectedWorkout,
    required this.workoutTagline,
    required this.action,
  });

  final String? workoutType;
  final String? selectedWorkout;
  final String? workoutTagline;
  final Future Function()? action;

  @override
  State<DietItemWidget> createState() => _DietItemWidgetState();
}

class _DietItemWidgetState extends State<DietItemWidget> {
  late DietItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DietItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        logFirebaseEvent('DIET_ITEM_COMP_Container_f58tyizj_ON_TAP');
        logFirebaseEvent('Container_execute_callback');
        await widget.action?.call();
      },
      child: Container(
        width: double.infinity,
        height: 44.0,
        decoration: BoxDecoration(
          color: widget.selectedWorkout == widget.workoutType
              ? FlutterFlowTheme.of(context).primary
              : FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.workoutType!,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: widget.selectedWorkout == widget.workoutType
                          ? FlutterFlowTheme.of(context).primaryBackground
                          : FlutterFlowTheme.of(context).primaryText,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              if (widget.selectedWorkout == widget.workoutType)
                Text(
                  widget.workoutTagline!,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
