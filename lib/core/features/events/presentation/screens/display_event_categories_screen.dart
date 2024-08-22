import 'package:education_app_ui/core/features/events/presentation/widgets/event_category_widget.dart';
import 'package:flutter/material.dart';

class DisplayEventCategories extends StatelessWidget {
  const DisplayEventCategories({
    super.key,
    required this.eventCategories,
  });

  final List eventCategories;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 5, bottom: 3),
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: eventCategories.length,
        shrinkWrap: true,
        itemBuilder: (context, index){
           return EventCategoryWidget(icon: eventCategories[index]['icon'], categoryName: eventCategories[index]['name'], isSelected: eventCategories[index]['selected'],);
        } 
      ),
    );
  }
}