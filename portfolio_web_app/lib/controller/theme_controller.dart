import 'package:get/get.dart';
import '../model/theme_model.dart';

class ThemeController extends GetxController {
  var themeModel = ThemeModel(themeType: ThemeType.LIGHT).obs;

  void updateTheme(ThemeType newTheme) {
    themeModel.update((val) {
      val!.themeType = newTheme;
    });
  }
}
