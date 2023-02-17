import '../language_util.dart';

extension TranslateLang on String {
  String get translate => LanguageUtil.ins.langContent(this);
}
