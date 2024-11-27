
import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../utils.dart';
// ignore: must_be_immutable
class JobSeekerContainer extends StatefulWidget {
  JobSeekerContainer({
    super.key,
    required this.containerColor,
    required this.name,
    required this.role,
    required this.experience,
    required this.workTypeColor,
    required this.workType,
    required this.workTypeTextColor,
    required this.price,
    required this.data,
    required this.isBookMarked,
  });

  final Color containerColor;
  final String name;
  final String role;
  final String experience;
  final Color workTypeColor;
  final String workType;
  final Color workTypeTextColor;
  final String price;
  final String data;
  bool isBookMarked;

  @override
  State<JobSeekerContainer> createState() => _JobSeekerContainerState();
}

class _JobSeekerContainerState extends State<JobSeekerContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.containerColor),
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.symmetric(vertical: 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 27,
                child: Text(widget.name[0],
                    style: const TextStyle(
                        fontSize: 30,
                        color: workTypeTextColor,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(
                          fontSize: 24,
                          color: white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.role,
                      style: const TextStyle(
                          color: white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const Spacer(),
              // Book Mark Section
              InkWell(
                onTap: () {
                  setState(() {
                    widget.isBookMarked = !widget.isBookMarked;
                  });
                },
                child: Icon(
                  checkBookMark(widget.isBookMarked),
                  size: 30,
                  color: white,
                ),
              )
            ],
          ),
          // Work Experience & Work Type
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              children: [
                // Work Experience
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: white),
                  child: Row(
                    children: [
                      const Icon(Icons.work_outline_rounded),
                      Text(
                        widget.experience,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 4),
                // Work Type
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: widget.workTypeColor),
                  child: Row(
                    children: [
                      Icon(
                        Icons.timer_sharp,
                        color: widget.workTypeTextColor,
                      ),
                      Text(
                        widget.workType,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: widget.workTypeTextColor),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          // Salary // Wages
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(widget.price,
                style: const TextStyle(
                  fontSize: 24,
                  color: white, /* fontWeight: FontWeight.bold */
                )),
          ),
          // Bio
          Text(widget.data,
              style: const TextStyle(
                color: white,
              ))
        ],
      ),
    );
  }
}
