import 'package:flutter/material.dart';

import 'package:test_ci_cd/localization/index.dart';
import 'package:test_ci_cd/router/index.dart';
import 'package:test_ci_cd/widgets/index.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    EasyLocalization.of(context);

    final tabs = [
      LocaleKeys.chats.tr(),
      LocaleKeys.posts.tr(),
    ];

    const routes = <PageRouteInfo<dynamic>>[
      ChatsRoute(),
      PostsRoute(),
    ];

    return CustomTabsRouter(
      appBarTitle: LocaleKeys.messages.tr(),
      tabs: tabs,
      routes: routes,
    );
  }
}
