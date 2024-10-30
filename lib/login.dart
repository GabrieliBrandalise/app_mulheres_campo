import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        title: Text(
          'Login',
          style: GoogleFonts.nunito(color: Colors.black),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration:  InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Email address',
                  labelStyle: GoogleFonts.nunito(color: Colors.black), 
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1), // Borda rosa no estado normal
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2), // Borda rosa quando focada
                  ),
                ),
              ),
              const SizedBox(height: 20), 
              TextFormField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration:  InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: GoogleFonts.nunito(color: Colors.black), 
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1), // Borda rosa no estado normal
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),// Borda rosa quando focada
                  ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
