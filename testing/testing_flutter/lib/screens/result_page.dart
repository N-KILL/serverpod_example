import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:testing_client/testing_client.dart';
import 'package:testing_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

final textEditingController = TextEditingController();
String? _resultMessage;
String? _errorMessage;

class Resultado extends StatefulWidget {
  const Resultado({super.key});

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  void _callHello() async {
    try {
      final result = await client.example.hello(textEditingController.text);
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
    //_callHello();
    String text;
    Color backgroundColor;

    if (_errorMessage != null) {
      backgroundColor = Colors.red[300]!;
      text = _errorMessage!;
    } else if (_resultMessage != null) {
      backgroundColor = Colors.green[300]!;
      text = _resultMessage!;
    } else {
      backgroundColor = Colors.grey[300]!;
      text = 'No server response yet.';
    }

    /* resultMessage:
    _resultMessage;
    errorMessage:
    _errorMessage;
    ;
    */

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ResultadoDisplay(
              color: backgroundColor,
              msj: text,
            )
          ],
        ),
      ),
    );
  }
}
