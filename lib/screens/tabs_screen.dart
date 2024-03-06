import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:strive/models/meta/strive_user.dart';
import 'package:strive/providers/fitness/all_exercises.dart';
import 'package:strive/providers/meta/app_state.dart';
import 'package:strive/providers/meta/strive_user.dart';
import 'package:strive/screens/create/create_screen.dart';
import 'package:strive/screens/explore_screen.dart';
import 'package:strive/screens/fitness_screen.dart';

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  bool _isUserSet = false;

  @override
  void initState() {
    super.initState();
    Future(() {
      _setUser();
    });
  }

  void _setUser() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) {
      print('couldn\'t find the current user.');
      return;
    }
    // Get the reference to the document
    DocumentReference documentReference =
        FirebaseFirestore.instance.collection('users').doc(currentUser.uid);

    try {
      // Fetch the document snapshot
      DocumentSnapshot documentSnapshot = await documentReference.get();

      // Check if the document exists
      if (documentSnapshot.exists) {
        // Access the data as a Map and create an object
        Map<String, dynamic> data =
            documentSnapshot.data() as Map<String, dynamic>;
        data['id'] = documentSnapshot.id;

        // Create your object using the retrieved data
        StriveUser striveUser = StriveUser.fromJson(data);

        ref.read(striveUserNotifierProvider.notifier).setUser(striveUser);
      } else {
        print('Document does not exist');
      }
    } catch (e) {
      print('Error getting document: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final appState = ref.watch(appStateNotifierProvider);
    Widget activePage;
    if (appState.selectedPageIndex == 0) {
      activePage = const FitnessScreen();
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
                ref.read(striveUserNotifierProvider.notifier).clearUser();
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
            icon: Icon(Icons.fitness_center),
            label: 'Fitness',
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
