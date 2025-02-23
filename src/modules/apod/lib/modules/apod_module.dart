import 'package:apod/core/custom_http_client.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart';

import 'apod_module/domain/usecases/getapod.dart';
import 'apod_module/external/datasource/apod_datasource_external.dart';
import 'apod_module/infra/repositories/apod_repository_impl.dart';
import 'apod_module/presenter/pages/home/home.dart';
import 'apod_module/presenter/pages/home/home_store.dart';

class ApodModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => CustomHttpClient(Client())),
        Bind.factory((i) => ApodDataSourceExternal(i.get())),
        Bind.factory((i) => ApodRepositoryImpl(i.get())),
        Bind.factory((i) => GetApodImpl(i.get())),
        Bind.factory((i) => HomeStore(i.get())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const HomePage(),
        )
      ];
}
