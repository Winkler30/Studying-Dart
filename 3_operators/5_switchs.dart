void main() {
  final dayWeek = 0;
  var dayWeekStr = '';

  if (dayWeek == 0) {
    dayWeekStr = 'Monday';
  } else if (dayWeek == 1) {
    dayWeekStr = 'Tuesday';
  } else {
    dayWeekStr = 'unidentified';
  }
  print(dayWeekStr);
  
  switch (dayWeek) {
    case 0:
      dayWeekStr = 'Sunday';
      break;
    case 1:
      dayWeekStr = 'Monday';
      break;
  }

  final age = 20;
  if (age == 18) {
    print('Adult');
  } else if (age == 19) {
    print('Adult');
  } else {
    print('Minor');
  }

  switch (age) {
    case 18:
    case 19:
      print('Adult');
      break;
    default:
      print('Minor');
      break;
  }
}
