import 'package:flutter/material.dart';
import 'package:testing_client/testing_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

final _textEditingController = TextEditingController();
String? _resultMessage;
String? _errorMessage;

class TextoBox extends StatelessWidget {
  final String label;
  final String hint;
  final bool censura;
  final TextInputType keyboard;
  final Icon icono;
  const TextoBox(
      {super.key,
      required this.label,
      required this.hint,
      required this.censura,
      required this.keyboard,
      required this.icono});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: TextFormField(
        // controller: _textEditingController,
        obscureText: censura,
        autofocus: false,
        keyboardType: keyboard,
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          suffixIcon: icono,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}

class ButtonElevated extends StatefulWidget {
  const ButtonElevated({super.key});

  @override
  State<ButtonElevated> createState() => _ButtonElevatedState();
}

class _ButtonElevatedState extends State<ButtonElevated> {
  void _callHello() async {
    try {
      final result = await client.example.hello(_textEditingController.text);
      setState(() {
        _resultMessage = result;
      });
    } catch (e) {
      setState(() {
        _errorMessage = '$e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _callHello,
      child: const Text('Send to Server'),
    );
  }
}

// _ResultDisplays shows the result of the call. Either the returned result from
// the `example.hello` endpoint method or an error message.
class _ResultDisplay extends StatelessWidget {
  final String? resultMessage;
  final String? errorMessage;

  const _ResultDisplay({
    this.resultMessage,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    String text;
    Color backgroundColor;
    if (errorMessage != null) {
      backgroundColor = Colors.red[300]!;
      text = errorMessage!;
    } else if (resultMessage != null) {
      backgroundColor = Colors.green[300]!;
      text = resultMessage!;
    } else {
      backgroundColor = Colors.grey[300]!;
      text = 'No server response yet.';
    }
    _ResultDisplay(
      resultMessage: _resultMessage,
      errorMessage: _errorMessage,
    );
    return Container(
      height: 50,
      color: backgroundColor,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
