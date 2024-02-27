import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:strive/providers/meta/app_state.dart';
import 'package:strive/screens/create/create_screen.dart';
import 'package:strive/screens/explore_screen.dart';
import 'package:strive/screens/programs_screen.dart';

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    final appState = ref.watch(appStateNotifierProvider);
    Widget activePage;
    if (appState.selectedPageIndex == 0) {
      activePage = const ProgramsScreen();
    } else if (appState.selectedPageIndex == 1) {
      activePage = const ExploreScreen();
    } else {
      activePage = const CreateScreen();
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        title: const Text('Strive'),
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Theme.of(context).colorScheme.onPrimary,
              ))
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Center(
          child: activePage,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: ref.read(appStateNotifierProvider.notifier).setSelectedPageIndex,
        currentIndex: appState.selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Personal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.construction),
            label: 'Create',
          ),
        ],
      ),
    );
  }
}
