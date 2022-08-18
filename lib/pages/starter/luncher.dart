import 'package:flutter/material.dart';

import '../components/styledWidgets/styled_texts.dart';

class LuncherPage extends StatelessWidget {
  const LuncherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'said Lite',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/mainbg.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/welcome');
                },
                child: saidLogo(context, 0xFF299CB4)
              ),
            ],
          ),
        ),
      ),
    );
  }
}