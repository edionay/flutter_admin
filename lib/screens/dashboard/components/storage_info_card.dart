import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    required this.title,
    required this.icon,
    required this.amountOfFiles,
    required this.numberOfFiles,
  });

  final String title, icon, amountOfFiles;
  final int numberOfFiles;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: kPrimaryColor.withOpacity(0.15),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(kDefaultPadding),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            child: SvgPicture.asset(icon),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '$numberOfFiles Files',
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white70),
                  )
                ],
              ),
            ),
          ),
          Text(amountOfFiles)
        ],
      ),
    );
  }
}
