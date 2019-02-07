import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ENTRAR"),
        centerTitle: true,
        actions: <Widget>[
          FlatButton(
            child: Text(
              "Criar Conta",
              style: TextStyle(fontSize: 15.0),
            ),
            textColor: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  hintText: "E-mail",
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (text) {
                  if (text.isEmpty || !text.contains("@"))
                    return "E-mail invalido!";
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Senha",
                ),
                obscureText: true,
                validator: (text) {
                  if (text.isEmpty || text.length < 6) return "Senha invalida";
                },
              ),
              Align(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: null,
                  child: Text(
                    "Esqueci minha senha :(",
                    textAlign: TextAlign.right,
                  ),
                  padding: EdgeInsets.zero,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              RaisedButton(
                child: Text(
                  "Entrar",
                  style: TextStyle(fontSize: 16.0),
                ),
                textColor: Colors.white,
                color: Theme.of(context).primaryColor,
                onPressed: (){
                  if(_formKey.currentState.validate()){

                  }
                },
              )
            ],
          )),
    );
  }
}
