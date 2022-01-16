import 'package:cosmic_flutter/src/constants/app_string.dart';
import 'package:cosmic_flutter/src/models/expandable_nav_group.dart';
import 'package:cosmic_flutter/src/models/title_nav.dart';
import 'package:cosmic_flutter/src/pages/fwf/sign_up_user.dart';
import 'package:cosmic_flutter/src/pages/fws/avatar_page.dart';
import 'package:cosmic_flutter/src/pages/fws/toggle_tab_page.dart';
import 'package:flutter/material.dart';

class AppNavList {
  static final List<ExpandableNavGroup> list = <ExpandableNavGroup>[
    ExpandableNavGroup(
      label: AppString.titleNavTab,
      icon: Icons.tab,
      children: [
        TitleNav(
          label: AppString.titleToggleTab,
          page: ToggleTabPage(),
        )
      ],
    ),
    ExpandableNavGroup(
      label: AppString.titleImage,
      icon: Icons.image,
      children: [
        TitleNav(
          label: AppString.titleAvatarImage,
          page: AvatarPage(),
        )
      ],
    ),
    ExpandableNavGroup(
      label: kASTitleAuth,
      icon: Icons.security,
      children: [
        TitleNav(
          label: kASTitleAuth,
          page: SignUpUser(),
        )
      ],
    ),
  ];
}
