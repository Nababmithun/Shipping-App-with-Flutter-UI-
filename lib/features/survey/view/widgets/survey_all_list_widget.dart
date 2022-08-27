import 'package:flutter/material.dart';
import 'package:interport/features/survey/view/widgets/survey_card_widget.dart';

class SurveyAllListWidget extends StatefulWidget {
  const SurveyAllListWidget({Key? key}) : super(key: key);

  @override
  State<SurveyAllListWidget> createState() => _SurveyAllListWidgetState();
}

class _SurveyAllListWidgetState extends State<SurveyAllListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const SurveyCardWidget();
        });
  }
}
