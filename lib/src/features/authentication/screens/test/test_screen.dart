import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/firebase_controller.dart';


class TestScreen extends StatelessWidget {

  final FirebaseController firebaseController = Get.put(FirebaseController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your App Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('Best Time: ${firebaseController.bestTime}')),
            /**ElevatedButton(
              onPressed: () async {
                await firebaseController.getBestTime('unreal@gmail.com');
              },
              child: Text('Best Time'),
            ),**/
          ],
        ),
      ),
    );
  }
}
