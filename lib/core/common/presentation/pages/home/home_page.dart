import 'package:education_app_ui/core/common/bottomNavigationBar/bloc/navigation_bloc.dart';
import 'package:education_app_ui/core/common/bottomNavigationBar/bloc/navigation_state.dart';
import 'package:education_app_ui/core/common/bottomNavigationBar/widgets/bottom_navigation_bar.dart';
import 'package:education_app_ui/core/common/bottomNavigationBar/widgets/generate_bottom_navigation_item.dart';
import 'package:education_app_ui/core/features/events/presentation/pages/events_home_page.dart';
import 'package:education_app_ui/core/features/events/presentation/pages/favorite_events_page.dart';
import 'package:education_app_ui/core/features/events/presentation/pages/new_event_page.dart';
import 'package:education_app_ui/core/features/location/presentation/pages/location_settings_page.dart';
import 'package:education_app_ui/core/features/profile/presentation/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  
  final mainPages = [
    /*---------------HomePage---------------*/
    EventsHomePage(),

   /*---------------LocationPage---------------*/
    LocationSettingsPage(),

    /*---------------NewEventPage---------------*/
    NewEventPage(),

    /*---------------FavoriteEventsPage---------------*/
    FavoriteEventsPage(),

    /*---------------ProfilePage---------------*/
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
     final List<BottomNavigationBarItem> navigationItems = [
        createBottomNavigationItem(context: context, icon: Icons.home_filled, isActive: false,label: 'Home'),
        createBottomNavigationItem(context: context, icon: Icons.location_on_rounded, isActive: false,label: 'Location'),
        createBottomNavigationItem(context: context, icon: Icons.add_box_rounded, isActive: false,label: 'New event'),
        createBottomNavigationItem(context: context, icon: Icons.favorite_rounded, isActive: false,label: 'Favorite'),
        createBottomNavigationItem(context: context, icon: Icons.person_rounded, isActive: false,label: 'Profile'),
     ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state){
          if(state is NavigationChanged){
            return mainPages[state.index];
          }
          return mainPages[0];
        },
      ),
       /* ----------------- BOTTOM NAVIGATION BAR ----------------- */
      bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state){
          int currentIndex = 0;
          if(state is NavigationChanged){
            currentIndex = state.index;
          }
          return BottomNavBar(items: navigationItems, currentIndex: currentIndex);
        },
      )
       /* ----------------- END BOTTOM NAVIGATION BAR ----------------- */
    );;
  }
}