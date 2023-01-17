import 'package:flutter/material.dart';

class TextFeildScreen extends StatefulWidget {
  const TextFeildScreen({Key? key}) : super(key: key);

  @override
  State<TextFeildScreen> createState() => _TextFeildScreenState();
}

class _TextFeildScreenState extends State<TextFeildScreen> {
  TextEditingController testController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: testController,
              textAlign: TextAlign.center,
              cursorColor: Colors.blue,
              cursorHeight: 35,
              cursorRadius: const Radius.circular(20),
              cursorWidth: 3,
              textAlignVertical: TextAlignVertical.center,
              textCapitalization: TextCapitalization.words,
              textDirection: TextDirection.ltr,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w600,
                // wordSpacing: Checkbox.width,
              ),
              autocorrect: false,
              autofocus: true,
              // expands: true,
              minLines: 1,
              maxLines: 2,
              enabled: true,
              onTap: () {
                debugPrint("On Tab -------->>> ");
              },
              onChanged: (value) {
                debugPrint("On Change -------->>> $value");
                setState(() {});
              },
            ),
            const SizedBox(height: 50),
            Text(testController.text),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          testController.text;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
