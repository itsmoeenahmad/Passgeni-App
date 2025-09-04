
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class text extends StatelessWidget {
  String data;
  double fs;
  Color textColor;
  FontWeight fw;
  text({super.key, required this.data, required this.fs, required this.textColor, required this.fw});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: GoogleFonts.bricolageGrotesque(
          fontSize: fs,
          color: textColor,
          fontWeight: fw,
      ),
    );
  }
}
