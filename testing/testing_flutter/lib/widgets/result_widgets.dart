// _ResultDisplays shows the result of the call. Either the returned result from
// the `example.hello` endpoint method or an error message.
import 'package:flutter/material.dart';

class ResultadoDisplay extends StatelessWidget {
  final Color color;
  final String msj;

  const ResultadoDisplay({
    super.key,
    required this.color,
    required this.msj,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: color,
      child: Center(
        child: Text(msj),
      ),
    );
  }
}
