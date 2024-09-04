import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/card29_details_card/card29_details_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Card29DetailsCard component.
  late Card29DetailsCardModel card29DetailsCardModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    card29DetailsCardModel =
        createModel(context, () => Card29DetailsCardModel());
  }

  void dispose() {
    card29DetailsCardModel.dispose();
  }

  /// Additional helper methods are added here.

}
