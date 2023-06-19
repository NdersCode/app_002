import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 91, 197, 247),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 76, 0, 139),
                          fontWeight: FontWeight.w600),
                    ),

                    // child: CircleAvatar(
                    //   radius: 16,
                    //   backgroundColor: const Color.fromARGB(255, 108, 162, 255),
                    //   child: Text(
                    //     ((data['question_index'] as int) + 1).toString(),
                    //     style: GoogleFonts.inter(
                    //         fontSize: 14,
                    //         color: const Color.fromARGB(255, 76, 0, 139),
                    //         fontWeight: FontWeight.w600),
                    //   ),
                    // ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          data['user_answer'] as String,
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              color: const Color.fromARGB(150, 255, 255, 255),
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['correct_answer'] as String,
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              color: const Color.fromARGB(255, 147, 169, 255),
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
