import 'package:dashboard_flutter_web/components/custom_text.dart';
import 'package:dashboard_flutter_web/constants/controller.dart';
import 'package:dashboard_flutter_web/helpers/responsiveness.dart';
import 'package:dashboard_flutter_web/pages/drivers/widgets/drivers_table.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
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
            )),
        Expanded(
          child: ListView(
            children: [
              DriversTable(),
            ],
          ),
        ),
      ],
    );
  }
}
