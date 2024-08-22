import 'package:education_app_ui/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

BottomNavigationBarItem createBottomNavigationItem({
  required IconData icon, 
  required String label, 
  required BuildContext context, 
  required bool isActive })
{
    return BottomNavigationBarItem(
      icon: Icon(
        icon, 
        // color: isActive ? AppColors.primaryColor: AppColors.primaryLightColor,
      ),
      label: label,
    );
}