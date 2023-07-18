import 'package:flutter/material.dart';

class LandscapeLayoutScreen extends StatelessWidget {
  const LandscapeLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: screenSize.width / 6,
            child: CircleAvatar(
              radius: (screenSize.width / 6) - 2,
              backgroundImage: const NetworkImage(
                'https://avatars.githubusercontent.com/u/28106814?s=400&u=70f1627dbcd1b5690cdbd5c42ae5911e58d79299&v=4',
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Sirajul Islam',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Cross Platform Mobile Application Developer(Flutter-Dart)',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Hi there 👋\nI am Sirajul Islam. Recently I Graduated From \nLovely Professional University in B.Tech CSE. My Engineering Major Was in Software Testing and Methodologie',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png',
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
