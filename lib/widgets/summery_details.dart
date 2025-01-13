import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/utils/colors.dart';
import 'package:responsive_flutter_app/widgets/custom_card.dart';

class SummeryDetails extends StatelessWidget {
  const SummeryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: kSectionColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildDetails("Cal", "202"),
          _buildDetails("Steps", "10233"),
          _buildDetails("Distance", "7km"),
          _buildDetails("Sleep", "8h")

        ],
      ),
    );
  }

  Widget _buildDetails(String key, String value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          key,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: kSecondaryColor,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: kGreyColor,
          ),
        ),
      ],
    );
  }
}
