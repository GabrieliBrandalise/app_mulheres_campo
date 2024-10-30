import 'package:app_mulheres_campo/cadastro.dart';
import 'package:app_mulheres_campo/login.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

Widget botaoTela(BuildContext context){
  return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Clique para navegar para a outra página',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(120, 140, 100, 80),
                  child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(100))),
                ),
                onTap: () => outraTela(),
                onLongPress: () => telaLogin() ,
              )
            ]);
}
void outraTela(){
  Navigator.push(context, MaterialPageRoute(builder: (context) => const CadastroWidget()));
}

void telaLogin(){
  Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.pink,
        ),
        body: botaoTela(context));
  }
}
