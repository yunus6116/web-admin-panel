import 'package:dashboard_flutter_web/components/custom_text.dart';
import 'package:dashboard_flutter_web/constants/controller.dart';
import 'package:dashboard_flutter_web/helpers/responsiveness.dart';
import 'package:dashboard_flutter_web/pages/overview/widgets/available_drivers.dart';
import 'package:dashboard_flutter_web/pages/overview/widgets/overview_cards_lage.dart';
import 'package:dashboard_flutter_web/pages/overview/widgets/overview_cards_medium.dart';
import 'package:dashboard_flutter_web/pages/overview/widgets/overview_vards_small.dart';
import 'package:dashboard_flutter_web/pages/overview/widgets/revenue_section_large.dart';
import 'package:dashboard_flutter_web/pages/overview/widgets/revenue_section_small.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6,
                ),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: ListView(
          children: [
            if (ResponsiveWidget.isLargeScreen(context) ||
                ResponsiveWidget.isMediumScreen(context))
              if (ResponsiveWidget.isCustomSize(context))
                OverviewCardsMediumScreen()
              else
                OverviewCardsLargeScreen()
            else
              OverviewCardsSmallScreen(),
            if (!ResponsiveWidget.isSmallScreen(context))
              RevenueSectionLarge()
            else
              RevenueSectionSmall(),
            AvailableDrivers(),
          ],
        )),
      ],
    );
  }
}
