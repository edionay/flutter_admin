import 'package:flutter/material.dart';
import 'package:flutter_admin/responsive.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (Responsive.isMobile(context))
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        SizedBox(
          width: kDefaultPadding,
        ),
        if (!Responsive.isMobile(context))
          Text(
            'Dashboard',
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(
            flex: Responsive.isDesktop(context) ? 2 : 1,
          ),
        Expanded(
          child: SearchField(),
        ),
        ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white10),
        color: kSecondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/profile_pic.png',
            height: 38,
          ),
          if (!Responsive.isMobile(context))
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
              child: Text('Edionay Aguiar'),
            ),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        fillColor: kSecondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        suffixIcon: Container(
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          padding: EdgeInsets.all(kDefaultPadding * 0.75),
          child: SvgPicture.asset("assets/icons/Search.svg"),
        ),
      ),
    );
  }
}
