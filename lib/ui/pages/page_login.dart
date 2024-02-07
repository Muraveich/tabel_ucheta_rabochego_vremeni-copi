// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:tabel_ucheta_rabochego_vremeni/bloc/person_controller.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/page_style/button_styles.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/pages/home_page/home_chief.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/pages/home_page/home_master.dart';
import 'package:tabel_ucheta_rabochego_vremeni/ui/pages/home_page/home_worker.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  late String login;
  late String password;
  final PersonController vhod = PersonController();
  String beadLogPas = '';
  bool _showPassword = false;

  void _togglevisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(image: AssetImage('assets/images/ztkt_Logo.png')),
              Text(
                beadLogPas,
                style: const TextStyle(color: Colors.red),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    labelText: 'Введите логин',
                  ),
                  onChanged: (value) {
                    login = value;
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  obscureText: !_showPassword,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.security),
                    border: const OutlineInputBorder(),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _togglevisibility();
                      },
                      child: Icon(
                        _showPassword ? Icons.visibility : Icons.visibility_off,
                        color: Colors.black54,
                      ),
                    ),
                    labelText: 'Введите пароль',
                  ),
                  onChanged: (value) {
                    password = value;
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  var person = await vhod.checkLogPas(login, password);
                  if (person != null) {
                    if (person.post == 'Руководитель') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeChief(
                                    name: person.name,
                                  )));
                    } else if (person.post == "Мастер") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeMaster(
                                    name: person.name,
                                  )));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeWorker(
                                    name: person.name,
                                  )));
                    }
                  } else {
                    setState(() {
                      beadLogPas = 'Не правильный логин или пароль';
                    });
                  }
                },
                style: buttonStyleGreen,
                child: Text(
                  'Войти',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
