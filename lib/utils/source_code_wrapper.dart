import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_best_practice/routes/app_pages.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

Generate(Widget child, String sourceFilePath, String? codeLinkPrefix) {
  return WidgetWithCodeView(child: child, sourceFilePath: sourceFilePath);
}

GenerateGetPage(Widget child, String sourceFilePath, String? codeLinkPrefix,
    String? title) {
  return () => Scaffold(
        appBar: AppBar(
          title: Text(title ?? "app_name".tr),
          actions: [
            IconButton(
                onPressed: () {
                  Get.toNamed(AppRoute.About);
                },
                icon: Icon(
                  Icons.info_outline,
                  color: Colors.orange,
                ))
          ],
        ),
        body: SafeArea(
          child: WidgetWithCodeView(
            child: child,
            sourceFilePath: sourceFilePath,
            codeLinkPrefix: codeLinkPrefix,
          ),
        ),
      );
}
