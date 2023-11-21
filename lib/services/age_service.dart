List<int> findAge(String age) {
  final currentDate = DateTime.now();
  final parsedDate = DateTime.parse(age);
  final ageNow = currentDate.year - parsedDate.year;
  final months = ageNow * 12;
  final days = currentDate.day - parsedDate.day;
  List<int> data = [ageNow, months, days];
  return data;
}
