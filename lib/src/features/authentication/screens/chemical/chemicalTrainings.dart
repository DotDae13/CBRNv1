import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/controllers/auth_controller.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/screens/test/test_screen.dart';
import '../../controllers/firebase_controller.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/controllers/auth_controller.dart';


class ChemicalTraining extends StatelessWidget {

  final AuthController authController = Get.find<AuthController>();
  final FirebaseController firebaseController = Get.put(FirebaseController());
  // Dummy data for chemical trainings
  final List<String> trainings = [
    'Training 1',
  ];

  @override
  Widget build(BuildContext context) {
    var userEmail = authController.currentUser.value?.email;
    return Scaffold(
      appBar: AppBar(
        title: Text('Chemical Training'),
      ),
      body: ListView.builder(
        itemCount: trainings.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(trainings[index]),
            onTap: () async {
              // Handle the click event for each training item
              //_handleTrainingClick(context, trainings[index]);
              await firebaseController.getBestTime(userEmail, 'Chemical');
              Get.to(TestScreen());
            },
          );
        },
      ),
    );
  }

  // Function to handle the click event for each training item
  void _handleTrainingClick(BuildContext context, String trainingName) {
    // You can implement the desired behavior when a training is clicked
    // For example, you can navigate to a new screen or show a dialog.
    // Here, we simply show a snackbar as an example.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Clicked on: $trainingName'),
      ),
    );
  }
}


