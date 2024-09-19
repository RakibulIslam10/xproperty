import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xproperty/routes/routes.dart';
import 'package:xproperty/views/utils/custom_color.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(414, 896),
      builder: (_, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, widget) {
          ScreenUtil.init(context);
          return MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: const TextScaler.linear(1.0)),
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: widget!,
            ),
          );
        },
        theme: ThemeData(scaffoldBackgroundColor: CustomColor.whiteColor),
        initialRoute: Routes.splashScreen,
        getPages: Routes.list,
      ),
    );
  }
}
