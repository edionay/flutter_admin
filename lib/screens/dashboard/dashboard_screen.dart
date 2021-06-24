import 'package:flutter/material.dart';
import 'package:flutter_admin/constants.dart';
import 'package:flutter_admin/responsive.dart';

import 'components/header.dart';
import 'components/my_files.dart';
import 'components/recent_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: kDefaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      RecentFiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(
                          height: kDefaultPadding,
                        ),
                      if (Responsive.isMobile(context)) StorageDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(
                    width: kDefaultPadding,
                  ),
                if (!Responsive.isMobile(context))
                  Expanded(flex: 2, child: StorageDetails()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
