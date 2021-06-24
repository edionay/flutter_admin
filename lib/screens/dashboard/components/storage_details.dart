import 'package:flutter/material.dart';
import 'package:flutter_admin/screens/dashboard/components/storage_info_card.dart';

import '../../../constants.dart';
import 'chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: kDefaultBorderRadius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage Details',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Chart(),
          StorageInfoCard(
            amountOfFiles: '1.3GB',
            numberOfFiles: 1329,
            title: 'Documents Files',
            icon: 'assets/icons/Documents.svg',
          ),
          StorageInfoCard(
            amountOfFiles: '1.3GB',
            numberOfFiles: 1329,
            title: 'Media Files',
            icon: 'assets/icons/media.svg',
          ),
          StorageInfoCard(
            amountOfFiles: '1.3GB',
            numberOfFiles: 1329,
            title: 'Other Files',
            icon: 'assets/icons/folder.svg',
          ),
          StorageInfoCard(
            amountOfFiles: '1.3GB',
            numberOfFiles: 1329,
            title: 'Unknown Files',
            icon: 'assets/icons/unknown.svg',
          ),
        ],
      ),
    );
  }
}
