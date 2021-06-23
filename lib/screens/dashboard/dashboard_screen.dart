import 'package:flutter/material.dart';
import 'package:flutter_admin/constants.dart';

import 'components/header.dart';
import 'components/my_files.dart';
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
                  child: MyFiles(),
                ),
                SizedBox(
                  width: kDefaultPadding,
                ),
                StorageDetails(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
