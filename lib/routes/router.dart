import 'package:autoRoute/pages/initial_page.dart';
import 'package:autoRoute/pages/second_page.dart';
import 'package:autoRoute/pages/third_page.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_route/transitions_builders.dart';

@autoRouter
class $Router {
  @initial
  InitialPage initialPage;
  @MaterialRoute(fullscreenDialog: true)
  SecondPage secondPage;
  @CustomRoute(
    transitionsBuilder: TransitionsBuilders.slideRightWithFade,
    durationInMilliseconds: 200,
  )
  ThirdPage thirdPage;
}