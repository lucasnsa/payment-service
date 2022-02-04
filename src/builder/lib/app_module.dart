import 'package:apod/apod.dart';
import 'package:builder/app/features/splash/presentation/ui/pages/splash_page.dart';
import 'package:builder/cooming_soon.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:home/home.dart';
import 'package:login/login.dart';
import 'package:modular_release_guard/modular_release_guard.dart';
import 'package:network_services/network_services.dart';
import 'package:sales/sales.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        NetWorkService(),
      ];

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashPage()),
        ChildRoute('/commingsoon',
            child: (context, args) => const CoomingSoon()),
        ModuleRoute(
          '/home',
          module: HomeModule(),
          transition: TransitionType.fadeIn,
        ),
        ModuleRoute(
          '/login',
          module: LoginModule(),
          transition: TransitionType.leftToRight,
        ),
        ModuleRoute(
          '/sales',
          module: SalesModule(),
          transition: TransitionType.rightToLeftWithFade,
        ),
        ModuleRoute(
          '/apod',
          module: ApodModule(),
          transition: TransitionType.fadeIn,
          // guards: [ReleaseGuard('/apod', redirectTo: '/')],
        ).withReleaseControl(guardedRoute: '/commingsoon'),
      ];
}
