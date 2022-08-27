import 'package:flutter/material.dart';
import 'package:interport/features/survey/view/widgets/survey_card_widget.dart';

class SurveyAssignedListWidget extends StatefulWidget {
  const SurveyAssignedListWidget({Key? key}) : super(key: key);

  @override
  State<SurveyAssignedListWidget> createState() =>
      _SurveyAssignedListWidgetState();
}

class _SurveyAssignedListWidgetState extends State<SurveyAssignedListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const SurveyCardWidget();
        });
  }
}
