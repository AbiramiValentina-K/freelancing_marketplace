import 'package:flutter/material.dart';
import 'package:freelancing_marketplace/utils.dart';

import '../../constants/colors.dart';
import '../../data/data.dart';
import '../widgets/freelancer_card.dart';

class FreelancerList extends StatefulWidget {
  const FreelancerList({super.key});

  @override
  State<FreelancerList> createState() => _FreelancerListState();
}

class _FreelancerListState extends State<FreelancerList> {
  dynamic search;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    search = "UI/UX Designer";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Explore",
          style: TextStyle(
              fontSize: 24,
              color: workTypeTextColor,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_outlined))
        ],
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 7.0),
              child: TextFormField(
                onChanged: (value) {
                  search = value;
                },
                initialValue: search,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Badge(
                        offset: Offset(-4, -4),
                        child: Icon(Icons.filter_list))),
              ),
            ),
            // ListView
            Expanded(
                child: ListView.builder(
                    itemCount: jobSeekerDetails.length,
                    itemBuilder: (BuildContext, int index) {
                      return JobSeekerContainer(
                        containerColor: (index % 2 == 0)
                            ? workTypeTextColor
                            : containerColor,
                        name: jobSeekerDetails[index]['name'] ?? "",
                        role: jobSeekerDetails[index]['role'],
                        experience: giveExperience(
                            jobSeekerDetails[index]['experience']),
                        workTypeColor: (index % 2 == 0)
                            ? workTypeColor
                            : workTypeTextColor,
                        workType: jobSeekerDetails[index]['workType'],
                        workTypeTextColor:
                            (index % 2 == 0) ? workTypeTextColor : white,
                        price: jobSeekerDetails[index]['salaryRange'],
                        data: jobSeekerDetails[index]['bio'],
                        isBookMarked: jobSeekerDetails[index]['isBookMarked'],
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
