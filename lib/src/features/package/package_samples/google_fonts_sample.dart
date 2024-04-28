import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

typedef TextStyleType = TextStyle Function({
  double? fontSize,
  FontWeight? fontWeight,
});

final fonts = <TextStyleType>[
  GoogleFonts.roboto,
  GoogleFonts.lato,
  GoogleFonts.montserrat,
  GoogleFonts.ubuntu,
  GoogleFonts.poppins,
];

class GoogleFontsSamples extends StatelessWidget {
  const GoogleFontsSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: fonts.length,
          separatorBuilder: (context, index) {
            return const SizedBox(height: 8.0);
          },
          itemBuilder: (context, index) {
            return Align(
              alignment: Alignment.center,
              child: Text(
                'Google Fonts',
                style: fonts[index](
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
