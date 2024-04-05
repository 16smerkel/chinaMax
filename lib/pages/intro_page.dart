import 'package:chinamaxapp/components/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/colors.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body:
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),

            Text("CHINA MAX",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 25),

           // icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image(
                  image: AssetImage('lib/images/orange-chicken.png'),
              ),
            ),


            const SizedBox(height: 25),

            // title
            Text(
              "THE TASTE OF CHINESE FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),

            // subtitle
            Text(
              "Feel the taste of the most authentic mall food court Chinese food from anywhere and anytime",
              style: TextStyle(
                color: Colors.grey[300],
                height: 2,
              ),
            ),
            
            const SizedBox(height: 25,),
            
            // get started button
            MyButton(
                text: "Get Started",
                onTap: () {
                  // go to menu page
                  Navigator.pushNamed(context, '/menupage');
                },
            ),
          ],
        ),
      ),
    );
  }
}