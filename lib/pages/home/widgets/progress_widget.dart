import 'package:flutter/material.dart';

import '../../../data/model/projek.dart';

class ProgressProjek extends StatelessWidget {
  Projek selectedProjek = projek[0];

  ProgressProjek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedProjek.name!,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFB3674F),
                    ),
                  ),
                  const Text(
                    "Selengkapnya",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF7097A8),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  progressDetail(
                    selectedProjek: selectedProjek.dtlProgress![0],
                  ),

                  progressDetail(
                    selectedProjek: selectedProjek.dtlProgress![1],
                  ),
                  progressDetail(
                    selectedProjek: selectedProjek.dtlProgress![2],
                  ),
                  progressDetail(
                    selectedProjek: selectedProjek.dtlProgress![3],
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class progressDetail extends StatelessWidget {
  detailProgress selectedProjek;

  progressDetail({Key? key, required this.selectedProjek}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        selectedProjek.isDone!
            ? const Icon(
                Icons.check_circle,
                color: Color(0xFFB3674F),
                size: 20,
              )
            : const Icon(
                Icons.circle_outlined,
                size: 20,
              ),
        const SizedBox(width: 8),
        Text(
          selectedProjek.name!,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xFFB3674F),
          ),
        ),
      ],
    );
  }
}
