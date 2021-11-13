

extension DateTimeEx on DateTime{

  String getDateToString(){
    return toString().split(" ")[0];
  }

  String getDayAndMonth(){
    return day.toString() + "-" + month.toString();
  }

  String getDateYesterdayToString(){
    return DateTime(year,month,this.day-1).toString().split(" ")[0];
  }

  equals(DateTime dateTime){
    return toString().split(" ")[0] == dateTime.toString().split(" ")[0];
  }

  isThe(){
    return weekday == 4;
  }

  DateTime getAfter({int day = 1,}){
    return DateTime(year,month,this.day+day);
  }


  DateTime getYesterDay({int day = 1,}){
    return DateTime(year,month,this.day-day);
  }

  bool isYasterDay(){
    return DateTime.now().getDateToString() == DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day-1).getDateToString();
  }

  DateTime getAfterTommorw(){
    return DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+2);
  }

  // String getDayWeek(){
  //   if(isArabic()){
  //     switch(weekday){
  //       case 1:
  //         return "الاثنين";
  //       case 2:
  //         return "الثلاثاء";
  //       case 3:
  //         return "الاربعاء";
  //       case 4:
  //         return "الخميس";
  //       case 5:
  //         return "الجمعة";
  //       case 6:
  //         return "السبت";
  //       case 7:
  //         return "الاحد";
  //     }
  //   }
  //   return DateFormat('EEEE').format(this);
  // }

  int getWeekId(){
    return weekday;
  }

}