import 'package:flutter/material.dart';
import 'package:flutter_admin/models/RecentFile.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
          color: kSecondaryColor, borderRadius: kDefaultBorderRadius),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recent Files'),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: kDefaultPadding,
              columns: [
                DataColumn(
                  label: Text('File Name'),
                ),
                DataColumn(
                  label: Text('Date'),
                ),
                DataColumn(
                  label: Text('Size'),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(
                  demoRecentFiles[index],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  DataRow recentFileDataRow(RecentFile file) {
    return DataRow(cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              file.icon,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Text(file.title),
            )
          ],
        ),
      ),
      DataCell(
        Text(file.date),
      ),
      DataCell(
        Text(file.size),
      ),
    ]);
  }
}
