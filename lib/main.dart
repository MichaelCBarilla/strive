import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:strive/firebase_options.dart';

import 'package:strive/screens/auth_screen.dart';
import 'package:strive/screens/loading_screen.dart';
import 'package:strive/screens/tabs_screen.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 29, 84, 193),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
        theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer,
          ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge: ThemeData().textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.normal,
                      color: kColorScheme.onSecondaryContainer,
                      fontSize: 24,
                    ),
              ),
        ),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const LoadingScreen();
            }
            if (snapshot.hasData && snapshot.data != null) {
              return const TabsScreen();
            }
            return const AuthScreen();
          },
        ));
  }
}
