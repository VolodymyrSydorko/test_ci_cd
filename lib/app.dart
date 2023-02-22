import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

import 'package:test_ci_cd/app_state_wrapper.dart';
import 'package:test_ci_cd/router/index.dart';
import 'package:test_ci_cd/services/index.dart';
import 'package:test_ci_cd/styles/index.dart';

class TestCiCd extends StatelessWidget {
  TestCiCd({super.key});

  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return AppStateWrapper(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Test Ci Cd',
        theme: AppTheme.getAppTheme(context),
        routerDelegate: _appRouter.delegate(
          navigatorObservers: () => [RouterObserver()],
        ),
        routeInformationParser: _appRouter.defaultRouteParser(),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}
