import 'package:age_calculator/services/age_service.dart';
import 'package:flutter/material.dart';

class AgeFinderContainer extends StatefulWidget {
  const AgeFinderContainer({super.key});

  @override
  State<AgeFinderContainer> createState() => _AgeFinderContainerState();
}

class _AgeFinderContainerState extends State<AgeFinderContainer> {
  final agecontroller = TextEditingController();
  int ageNowx = 0;
  int monthsx = 0;
  int daysx = 0;

  getAgedata() {
    List<int> data = findAge(agecontroller.text);
    setState(() {
      ageNowx = data[0];
      monthsx = data[1];
      daysx = data[2];
      print(daysx.toString());
    });
  }

  // findAge(String age) {
  //   final currentDate = DateTime.now();
  //   final parsedDate = DateTime.parse(age);
  //   final ageNow = currentDate.year - parsedDate.year;
  //   final months = ageNow * 12;
  //   final days = currentDate.day - parsedDate.day;

  //   setState(() {
  //     ageNowx = ageNow;
  //     monthsx = months;
  //     daysx = days;
  //   });
  //   print(days);
  //   print(ageNow.toString());
  //   print(months.toString());
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Enter your age',
            style: TextStyle(color: Color(0xffD8D9DA)),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 15)),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff61677A)),
            child: TextField(
              controller: agecontroller,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              'YY-MM-DD',
              style: TextStyle(
                  color: Color(0xffD8D9DA), fontStyle: FontStyle.italic),
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 15)),
          Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 40, 41, 42)),
                  onPressed: () {
                    findAge(agecontroller.text);
                    getAgedata();
                  },
                  child: const Text(
                    'Find your age',
                    style: TextStyle(color: Color(0xffD8D9DA)),
                  )))
        ],
      ),
    );
  }
}
