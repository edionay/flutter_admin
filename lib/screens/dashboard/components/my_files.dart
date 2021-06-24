import 'package:flutter/material.dart';
import 'package:flutter_admin/models/MyFiles.dart';
import 'package:flutter_admin/responsive.dart';

import '../../../constants.dart';
import 'file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Files',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 1.5,
                    vertical: kDefaultPadding),
              ),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Add New'),
            ),
          ],
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Responsive(
            mobile: FileInfoGridView(
              crossAxisCount: _size.width < 650 ? 2 : 4,
              childAspectRatio: _size.width < 650 ? 1.2 : 1,
            ),
            tablet: FileInfoGridView(),
            desktop: FileInfoGridView(
              childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
            ))
      ],
    );
  }
}

class FileInfoGridView extends StatelessWidget {
  const FileInfoGridView({this.childAspectRatio = 1, this.crossAxisCount = 4});

  final double childAspectRatio;
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: childAspectRatio,
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: kDefaultPadding,
          crossAxisSpacing: kDefaultPadding),
      itemBuilder: (context, index) => FileInfoCard(
        info: demoMyFiles[index],
      ),
    );
  }
}
