import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/app/utils/constants.dart';

class NameAndDescriptionCard extends StatelessWidget {
  const NameAndDescriptionCard({
    Key? key,
    required this.name,
    required this.description,
  }) : super(key: key);

  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Card(
        margin: EdgeInsets.zero,
        color: primaryColor.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      fontSize: 30, color: Colors.black54),
                ),
              ),
              Text(
                description,
                textAlign: TextAlign.justify,
                style: Get.textTheme.bodyText2!.copyWith(
                  color: Colors.white.withOpacity(0.8),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
