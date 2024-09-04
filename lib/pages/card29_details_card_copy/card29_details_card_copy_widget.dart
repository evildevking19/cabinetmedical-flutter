import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/appliste/appliste_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'card29_details_card_copy_model.dart';
export 'card29_details_card_copy_model.dart';

class Card29DetailsCardCopyWidget extends StatefulWidget {
  const Card29DetailsCardCopyWidget({Key? key}) : super(key: key);

  @override
  _Card29DetailsCardCopyWidgetState createState() =>
      _Card29DetailsCardCopyWidgetState();
}

class _Card29DetailsCardCopyWidgetState
    extends State<Card29DetailsCardCopyWidget> {
  late Card29DetailsCardCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Card29DetailsCardCopyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: Text(
                'Select second day',
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Roboto Mono',
                      color: Colors.black,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: FlutterFlowCalendar(
                color: FlutterFlowTheme.of(context).primary,
                weekFormat: false,
                weekStartsMonday: false,
                onChange: (DateTimeRange? newSelectedDate) {
                  setState(() => _model.calendarSelectedDay = newSelectedDate);
                },
                titleStyle: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Roboto Mono',
                      color: Colors.black,
                    ),
                dayOfWeekStyle: TextStyle(),
                dateStyle: TextStyle(),
                selectedDateStyle: TextStyle(),
                inactiveDateStyle: TextStyle(),
              ),
            ),
          ],
        ),
        Align(
          alignment: AlignmentDirectional(-0.12, 0.97),
          child: FFButtonWidget(
            onPressed: () async {
              await Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  duration: Duration(milliseconds: 300),
                  reverseDuration: Duration(milliseconds: 300),
                  child: ApplisteWidget(),
                ),
              );
            },
            text: 'Search',
            options: FFButtonOptions(
              width: 130.0,
              height: 40.0,
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).primary,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ],
    );
  }
}
