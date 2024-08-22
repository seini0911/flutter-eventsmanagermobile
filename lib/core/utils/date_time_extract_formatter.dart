import 'package:intl/intl.dart';  


class DateTimeExtractor{

  static String getDate(DateTime dateTime){
    // Format the date as "day, month abbreviation" (e.g., "24 Aug")  
    String formattedDate = DateFormat('d MMM').format(dateTime);  
    return formattedDate.toString(); 
  }
  static String getTime(DateTime dateTime){
      // Format the time (e.g., "14:30")  
    String formattedTime = DateFormat('HH:mm').format(dateTime);
    return formattedTime.toString(); 
  }
}
