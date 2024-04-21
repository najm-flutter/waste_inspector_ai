import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waste_inspector_ai/controllers/home_page_co.dart';
import 'package:waste_inspector_ai/core/functions/bouttom_sheet_cu.dart';
import 'package:waste_inspector_ai/view/widgets/home_page/upload_image_de.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomePageCoImp homePageCoImp = Get.put(HomePageCoImp());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Camera Google"),
        ),
        body: Container(
          margin: const EdgeInsets.all(65.0),
          child: GetBuilder<HomePageCoImp>(builder: (co) {
            return Column(
              children: [
                UploadImageDe(
                  myFile: co.myFile,
                  onTap: () => bouttomSheetCu(() => co.onTapCamera(), () => co.onTapGellery()),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(onPressed: () {}, child: const Text("Search")),
              ],
            );
          }),
        ));
  }
}
