import 'package:flutter/material.dart';

import '../../../../res/resources/colors.dart';
import '../../../../res/widgets/common_text_widget.dart';

class CommonExpandableWidget extends StatefulWidget {
  final String? title;
  final bool isExpandable;
  const CommonExpandableWidget(
      {Key? key, this.title, this.isExpandable = false})
      : super(key: key);

  @override
  State<CommonExpandableWidget> createState() => _CommonExpandableWidgetState();
}

class _CommonExpandableWidgetState extends State<CommonExpandableWidget> {
  @override
  Widget build(BuildContext context) {
    var spaceHeightMax = const SizedBox(
      height: 10,
    );
    var spaceHeightMin = const SizedBox(
      height: 5,
    );
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    infoFieldWidget({String? title, String? fieldData}) => Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonTextWidget(
                    text: title,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppTheme.darkBlackColor,
                  ),
                  CommonTextWidget(
                    text: fieldData,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppTheme.greyColor,
                  ),
                ],
              ),
            ],
          ),
        );
    return Column(
      children: [
        widget.isExpandable
            ? const SizedBox()
            : Container(
                height: 54,
                padding: const EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppTheme.greyFifthColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonTextWidget(
                      text: widget.title ?? "",
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    const Icon(Icons.add),
                  ],
                ),
              ),
        widget.isExpandable
            ? Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppTheme.greyFifthColor,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 54,
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppTheme.appBarColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonTextWidget(
                            text: widget.title ?? "",
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                          const Icon(Icons.minimize_rounded),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5.0,
                        right: 5,
                        top: 10,
                        bottom: 16,
                      ),
                      child: Column(
                        children: [
                          infoFieldWidget(
                              title: "Work Order ID", fieldData: "DGS 2512B"),
                          spaceHeightMax,
                          infoFieldWidget(
                              title: "Survey ID", fieldData: "SI3562"),
                          spaceHeightMax,
                          infoFieldWidget(
                              title: "Client Name", fieldData: "Jane Cooper"),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
