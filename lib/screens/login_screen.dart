import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrar'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          TextButton(
            child: const Text(
              'Criar Conta',
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              TextFormField(
                decoration: const InputDecoration(hintText: 'E-mail'),
                keyboardType: TextInputType.emailAddress,
                validator: (text) {
                  if (text!.isEmpty || !text.contains('@')) {
                    return 'E-mail inválido';
                  }
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Senha'),
                obscureText: true,
                validator: (text) {
                  if (text!.isEmpty || text.length < 6) return 'Senha inválida';
                },
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Esqueci minha senha',
                      textAlign: TextAlign.right,
                    )),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                height: 44.0,
                child: RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: const Text(
                    'Entrar',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
