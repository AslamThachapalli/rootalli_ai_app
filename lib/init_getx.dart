import 'package:get/get.dart';

import 'rehab/viewModel/rehab_view_model.dart';
import 'home/viewModel/home_view_model.dart';
import 'injection.dart';

Future<void> initGetX() async {
  Get.put(di<HomeViewModel>()..getCompletedSessions());
  Get.put(di<RehabViewModel>());
}
