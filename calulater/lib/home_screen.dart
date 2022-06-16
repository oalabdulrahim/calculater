import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text("Grade Calculator"),
      )),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        TextField(
          controller: textController,
          decoration: InputDecoration(
              hintText: "type your score",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
        ),
        Container(
          width: 160,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              print(textController.text);
            },
            child: Text("test"),
            style: ElevatedButton.styleFrom(
                primary: Colors.pink, shape: StadiumBorder()),
          ),
        )
      ]),
    );
  }
}
