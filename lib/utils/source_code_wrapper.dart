import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

// class SourceCodeViewerWraper {
Generate(Widget child, String sourceFilePath, String? codeLinkPrefix) {
  return WidgetWithCodeView(child: child, sourceFilePath: sourceFilePath);
}

GenerateGetPage(Widget child, String sourceFilePath, String? codeLinkPrefix) {
  return () => WidgetWithCodeView(
        child: child,
        sourceFilePath: sourceFilePath,
        codeLinkPrefix: codeLinkPrefix,
      );
}
// }
