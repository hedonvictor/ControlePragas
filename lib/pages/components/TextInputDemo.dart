import 'package:flutter/material.dart';

class TextInputDemo extends StatefulWidget {
  const TextInputDemo({Key? key}) : super(key: key);

  @override
  _TextInputDemoState createState() => _TextInputDemoState();
}

class _TextInputDemoState extends State<TextInputDemo> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Input Demo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter your text',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Use the text from the input
                String inputText = _controller.text;
                // You can do whatever you want with the text here
                print('Entered text: $inputText');
                // Clear the input field
                _controller.clear();
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }
}
