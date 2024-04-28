import 'package:get/get.dart';

class SidebarController extends GetxController {
  RxBool isAboutMeSelected = false.obs;
  RxBool isResumeSelected = false.obs;
  RxBool isPortfolioSelected = false.obs;
  RxBool isContactSelected = false.obs;


  void selectAboutMe() {
    isAboutMeSelected.value = true;
    isResumeSelected.value = false;
    isPortfolioSelected.value = false;
    isContactSelected.value = false;
  }

  void selectResume() {
    isAboutMeSelected.value = false;
    isResumeSelected.value = true;
    isPortfolioSelected.value = false;
    isContactSelected.value = false;
  }

  void selectPortfolio() {
    isAboutMeSelected.value = false;
    isResumeSelected.value = false;
    isPortfolioSelected.value = true;
    isContactSelected.value = false;
  }

  void selectContact() {
    isAboutMeSelected.value = false;
    isResumeSelected.value = false;
    isPortfolioSelected.value = false;
    isContactSelected.value = true;
  }
}
