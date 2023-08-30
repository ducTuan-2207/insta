import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram/responsive/mobile_screen_layout.dart';
import 'package:instagram/responsive/responsive_layout_screen.dart';
import 'package:instagram/responsive/web_screen_layout.dart';
import 'package:instagram/screens/login_screen.dart';
import 'package:instagram/screens/singup_screen.dart';
import 'package:instagram/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //đảm bảo rằng Flutter đã được khởi tạo và sẵn sàng hoạt động trước khi thực hiện các bước tiếp theo.
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyDERwOqTLF9zNCjFAC-xt3ww3s9KaxqTus',
        appId: '1:151654727149:web:c4d569ad81b26f54c33be4',
        messagingSenderId: '151654727149',
        projectId: 'instagram-bca9d',
        storageBucket: "instagram-bca9d.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
        // home: const ResponsiveLayout(
        //     mobileScreenLayout: mobileScreenLayout(),
        //     webScreenLayout: webScreenLayout()));
        home: const SingupScreen());
  }
}
