import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progresssystem_splashscreen/firebase_options.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/controllers/auth_controller.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:progresssystem_splashscreen/src/utils/theme/theme.dart';

void main() {
  
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(App());
}

class App extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());
  App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),

    );
  }
}
      /**Container(
        width: 300,
        height: 300,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(
          'Homepage',
          style: TextStyle(fontFamily: 'RobotoMono'),
        ),
      )
    );
  } // This is the theme of your application.
}

class AppHome extends StatelessWidget{
  const AppHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text(".appable/"), leading: const Icon(Icons.ondemand_video)),
      floatingActionButton: FloatingActionButton(child: const Icon(Icons.add_shopping_cart_outlined)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text("Heading"),
            const Text("Sub-Heading"),
            const Text("Paragraph"),
            ElevatedButton(onPressed: () {}, child: const Text("Elevated Button"),),
            OutlinedButton(onPressed: () {}, child: const Text("Outlined Button"),),
            const Padding(padding: Edge)
            
          ],
        )
      ),
    )
  }
}
    **/