import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/my_button.dart';

class MyHomePage extends StatelessWidget {
  static const String id = '/home_page';

  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://miro.medium.com/max/1400/0*vowtRZE_wvyVA7CB'),
              radius: 75,
            ),
            Text(
              'Breno Rocha',
              style: GoogleFonts.indieFlower(fontSize: 30, color: Colors.white),
            ),
            MyButton(
              icon: Icons.phone_android,
              text: '11 12345-6789',
              padding: 16.0,
              onPressed: () => { print('Teste Phone') },
            ),
            MyButton(
              text: 'email@email.com',
              icon: Icons.email,
              padding: 0.0,
              onPressed: () => { print('Teste Email') },
            )
          ],
        ),
      ),
    );
  }
}