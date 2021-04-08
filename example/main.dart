import 'package:flutter/material.dart';
import 'package:opacity_button/opacity_button.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            OpacityButton(
              child: Image.network("https://picsum.photos/200/300"),
              onTap: () => print("Fuck"),
              onLongPress: () => print("Fuck basirlarr"),
              opacityValue: .3,
            ),
          ],
        ),
      ),
    );
  }
}
