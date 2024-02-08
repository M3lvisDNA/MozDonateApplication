
import 'package:flutter/material.dart';
//modificar os textfields
InputDecoration getAuthenticationInputDecoration(String label, {bool isPassword = false}){
  bool obscureText = isPassword;
  return InputDecoration(
    hintText:label,
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
    ),
    /*enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
      borderSide: BorderSide(color: Colors.black, width: 2),
    ),*/
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
      borderSide: const BorderSide(color: Color.fromARGB(255, 1, 82, 64), width: 3),
    ),
    /*errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
      borderSide: const BorderSide(color: Colors.red, width: 4 )
    ),*/
    suffixIcon: isPassword ? IconButton(
      icon: Icon(
        obscureText ? Icons.visibility_off : Icons.visibility,
        color: Colors.grey,
      ),
      onPressed: () {
        // Inverte o estado do obscureText ao clicar no ícone
        obscureText = !obscureText;
      },
    ) : null,
  );
}