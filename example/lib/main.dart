import 'package:flutter/material.dart';
import 'package:simple_rich_text/simple_rich_text.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    String text = null;
//    String text = 'no format characters';
//    String text = r'format characters: \*\/\_';
//    String text = '_entire string_';
//    String text = '*/_fully loaded!_*/';
//    String text = 'first *bold*.';
//    String text = r'test*\_quoted\_*.';
//    String text = r'don't*close';
//    String text = r'_start at beginning and do not close';
//    String text = r'/Deanna/ is /awesome/!';
//    String text = r'_back__to back_';
//    String text = r'go to _{route}home_ page';
    String text =
        r'*_/this is all three*_/ (*{color:red}bold*, _{color:green}underlined_, and /{color:pink}italicized/). _{push:home;color:blue}Click to navigate to home screen_';
    return new MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey,
          // , chars: r"[*]"
          body: Center(
              child: SimpleRichText(
                  text: text, style: TextStyle(color: Colors.yellow)))),
    );
  }
}
