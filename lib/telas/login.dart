// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1_flutterdemo/telas/homepage.dart';

import '../componentes/components.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  bool _registerMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 228, 179),
      appBar: AppBar(
        title:  Text(_registerMode ? 'Registar' : 'Login',
          style: const TextStyle(fontFamily: 'Raleway'),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 216, 216, 216),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/Logo.png"),
              TextFormField(
                controller: _emailController,
                decoration: getAuthenticationInputDecoration('E-mail'),
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: getAuthenticationInputDecoration('Password', isPassword:true),
                
              ),
              const SizedBox(height: 8),
              if (_registerMode)
                Column(
                  children: [
                    //SizedBox(height: 8.0),
                    TextFormField(
                      controller: _confirmPasswordController,
                      obscureText: true,
                      decoration: getAuthenticationInputDecoration('Confirmar Password', isPassword:true),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _usernameController,
                      decoration: getAuthenticationInputDecoration('Nome de Usuário'),
                    ),
                  ],
                ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () async {
                  String emailAddress = _emailController.text;
                  String password = _passwordController.text;
                  String nomeUsuario = _usernameController.text;

                  if(emailAddress.isEmpty || password.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Preencha todos os campos!'),
                      ),
                      
                      );
                      return;
                  }

                  try {
                    //
                    if (_registerMode) {
                      // Registro
                      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: emailAddress,
                        password: password,
                      );

                      await userCredential.user?.updateDisplayName(nomeUsuario);
                      //após registro o usuario será redirecionado para a tela de login para efecturar o login ...
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content:Text('Registro bem sucedido!'),
                        ),
                      );
                      //Mudando de estado para a tela de Login
                      setState(() {
                        _registerMode=false;
                        _emailController.text = emailAddress;
                        _passwordController.text = password;
                      });

                    } else {
                      // Login
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: emailAddress,
                        password: password,
                      );
                    }
                
                    // Login bem-sucedido, redirecionar o usuario para outra tela.  
                     Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                      );
                  } on FirebaseAuthException catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Ainda não possui uma conta, por favor faça o registro!'),
                      ),
                    );
                  }
                },
                child: Text(_registerMode ? 'Registar' : 'Login',
                  style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                ), 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 252, 253, 255),
                  
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _registerMode = !_registerMode;
                  });
                },
                child: Text(_registerMode ? 'Já tem uma conta? Log in!' : "Ainda não tem uma conta? Registe-se!"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
