import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:better_flutter/controller/index.dart';
import 'package:better_flutter/service/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:better_flutter/common/index.dart';
import 'package:better_flutter/routes/app_pages.dart';
import 'package:better_flutter/theme/app_theme.dart';

void main() async {
  await init();
  runApp(const MyApp());
}

Future init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Get.putAsync(() => StorageService().init());
  Get.put<ConfigStore>(ConfigStore());

  setSystemUi();
}

void setSystemUi() {
  if (GetPlatform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        enableLog: true,
        title: 'Better Flutter',
        theme: ConfigStore.to.isDarkMode ? AppTheme.dark : AppTheme.light,
        getPages: AppPage.routes,
        initialRoute: AppPage.INITIAL,
        locale: ConfigStore.to.locale, // LocaleService.locale,
        fallbackLocale: LocaleService.fallbackLoacale,
        translations: LocaleService(),
      ),
    );
  }
}
