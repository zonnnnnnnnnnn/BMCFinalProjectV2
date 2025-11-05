import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:ecommerce_app/screens/auth_wrapper.dart'; // 1. Import AuthWrapper
import 'package:ecommerce_app/providers/cart_provider.dart'; // 1. ADD THIS
import 'package:provider/provider.dart'; // 2. ADD THIS




void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. MaterialApp is the root of your app
    return MaterialApp(
        // 2. This removes the "Debug" banner
        debugShowCheckedModeBanner: false,
        title: 'eCommerce App',
        theme: ThemeData(
        primarySwatch: Colors.deepPurple,
    ),
      home: const AuthWrapper(),
    );
  }
}

runApp(
// 2. We wrap our app in the provider
ChangeNotifierProvider(
// 3. This "creates" one instance of our cart
create: (context) => CartProvider(),
// 4. The child is our normal app
child: const MyApp(),
),
);

// ... (your splash screen remove code)
}










