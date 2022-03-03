import 'package:flutter/material.dart';
import 'package:flutter_codebase/injection.dart';
import 'package:flutter_codebase/utility/app_bloc_observer.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import '../routes/routes.dart';
import 'app/app.dart';

Future<void> main() async {
  //?call notice codes
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies(Env.prod);

  //?Select storage for store data using hydrated bloc package
  //?data storing location selection is very important.
  //?other wise data might be lost when system clear data
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  // runApp will run, but not be shown until initialization completes:
  FlutterNativeSplash.removeAfter(initialization);

  final observer = AppBlocObserver();

  HydratedBlocOverrides.runZoned(
      () => runApp(
            MyApp(
              appRoutes: AppRoutes(),
              // connectivity: Connectivity(),
            ),
          ),
      storage: storage,
      blocObserver: observer);
}

//? for delaied spalsh screen
void initialization(BuildContext context) async {
  // This is where you can initialize the resources needed by your app while
  // the splash screen is displayed.  After this function completes, the
  // splash screen will be removed.
  await Future.delayed(const Duration(seconds: 1));
}
