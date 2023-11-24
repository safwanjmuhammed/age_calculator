import 'package:age_calculator/services/age_service.dart';
import 'package:flutter/material.dart';

class AgeFinderContainer extends StatefulWidget {
  const AgeFinderContainer({super.key});

  @override
  State<AgeFinderContainer> createState() => _AgeFinderContainerState();
}

class _AgeFinderContainerState extends State<AgeFinderContainer> {
  TextEditingController agecontroller = TextEditingController();
  int ageNowx = 0;
  int monthsx = 0;
  int daysx = 0;

  void getAgeData() {
    List<int> data = findAge(agecontroller.text, context);
    setState(() {
      ageNowx = data[0];
      monthsx = data[1];
      daysx = data[2];
      showDialog(
          context: context,
          builder: (context) {
            return SimpleDialog(
              children: [
                Container(
                  height: 100,
                  width: 50,
                )
              ],
            );
          });
      print(daysx.toString());
    });
  }

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
                    findAge(agecontroller.text, context);
                    getAgeData();
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
