import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(),
          buildIcon(),
        ],
      ),
    );
  }

  Widget buildTop(){
        final bottom = profileHeight / 2;
        final top = coverHeight - profileHeight / 2;

    return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: bottom),
            child: buildCoverImage(),
          ),
          Positioned(
            top: top,
            child: buildProfilImage(),
          ),
        ],
      );
  }

  Widget buildCoverImage() => Container(
        width: double.infinity,
        height: coverHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                '/Users/lefry04/Desktop/flutter_application/aset/ec101428-4ad5-4d7a-a63c-15863bc81443.jpeg'
                 ),
              fit: BoxFit.cover),
        ),
      );

  Widget buildProfilImage() => CircleAvatar(
    radius: profileHeight / 2,
    backgroundColor: Colors.grey,
    backgroundImage: const AssetImage('/Users/lefry04/Desktop/flutter_application/aset/8e336ca7-1c80-4bac-9b9c-8a04cb813d75.jpeg'
    ),
  );

  Widget buildContent() => const Column(
    children: [
      SizedBox(height: 8),
      Text(
        'Lefry Mandang',
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      SizedBox(height: 8),
      Text(
        'Informatics Student',
        style: TextStyle(fontSize: 20, color: Colors.black),

        ),
      SizedBox(height: 16,)
    ],
  );
  Widget buildIcon() => const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        FontAwesomeIcons.instagram,
      ),
      SizedBox(width: 12,),
      Icon(
        FontAwesomeIcons.github,
      ),
      SizedBox(width: 12,),
      Icon(
        FontAwesomeIcons.twitter,
      ),
      SizedBox(width: 12,),
      Icon(
        FontAwesomeIcons.linkedin,
      ),
      SizedBox(width: 12,),
    ],
  );
}
