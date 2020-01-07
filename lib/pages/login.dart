import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _tEmail = TextEditingController();
  final _tSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtter - seu PDV pessoal'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: _body(),
      ),
    );
  }
}

_body() {
  return Form(
    child: ListView(
      children: <Widget>[
                
        // input EMAIL
        TextFormField(
          controller: _tEmail,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            // cor ao digitar
            color: Colors.green
          ),
          decoration: InputDecoration(
            labelText: 'Email',
            labelStyle: TextStyle(
              // cor do label
              color: Colors.black26,
              fontSize: 18
            ),
            // uma especie de placeholder que aparece quando clico no campo
            // ou seja. é uma DICA
            hintText: 'seuemail@email.com',
            hintStyle: TextStyle(
              // cor do placeholder ao clica no campo
              color: Colors.black54, fontSize: 12
            ),
          ),
        ),

        // input SENHA
        TextFormField(
          controller: _tSenha,
          keyboardType: TextInputType.number,
          obscureText: true,
          style: TextStyle(
            color: Colors.green
          ),
          decoration: InputDecoration(
            labelText: 'Senha',
            labelStyle: TextStyle(
              color: Colors.black26,
              fontSize: 18
            ),
            hintText: '*******',
            hintStyle: TextStyle(
              color: Colors.black54, fontSize: 12
            ),
          ),
        ),


        // botao
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 20),
          child: RaisedButton(
            child: Text('Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18
              ),
            ),
            color: Colors.orange,
            onPressed: _onClickLogin
          ),
        ),
      ],
    ),
  );
}

void _onClickLogin() {
  final email = _tEmail.text;
  final senha = _tSenha.text;

  print('Email: $email, senha: $senha');
}
