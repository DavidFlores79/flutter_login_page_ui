import 'package:flutter/material.dart';

class InputsContainer extends StatelessWidget {
  const InputsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(255, 95, 27, 0.3),
              blurRadius: 20,
              offset: Offset(0, 10)),
        ],
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[200]!),
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Email o número de teléfono',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                  border: InputBorder.none),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[200]!),
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Contraseña',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                  border: InputBorder.none),
            ),
          ),
          const SizedBox(height: 25),
          Text(
            '¿Olvidaste tu Contraseña?',
            style: TextStyle(
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}
