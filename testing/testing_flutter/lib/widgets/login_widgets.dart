import 'package:flutter/material.dart';

class TextoBox extends StatelessWidget {
  final String label;
  final String hint;
  final bool censura;
  final TextInputType keyboard;
  final Icon icono;
  final TextEditingController? control;
  const TextoBox(
      {super.key,
      required this.label,
      required this.hint,
      required this.censura,
      required this.keyboard,
      required this.icono,
      this.control});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: TextFormField(
        // controller: control,
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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(minimumSize: const Size(355, 50)),
        onPressed: () {
          Navigator.pushNamed(context, 'result');
          //_callHello();
        },
        child: const Text(
          'Sing Up',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
