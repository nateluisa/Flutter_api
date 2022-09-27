import 'package:flutter/material.dart';

import '../../widgets/menu.dart';
import 'new_salle.dart';

class SallesScreen extends StatelessWidget {
  SallesScreen({Key? key, required this.sallesContext}) : super(key: key);
  final BuildContext sallesContext;
  bool opacidade = true;
  final _formKey = GlobalKey<FormState>();

  // tudo dentro do form ele ficara observando
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (contextNew) => Menu(),
              ),
            );
          },
          child: const Icon(
            Icons.arrow_back_outlined, // add custom icons also
          ),
        ),
        backgroundColor: Color.fromARGB(255, 212, 197, 238),
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Text(
            'Vendas',
          ),
        ),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: Duration(milliseconds: 800),
        child: ListView(
            //children: BankInherited.of(context).bankList,
            ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contextNew) => NewSalle(
                sallesContext: context,
              ),
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 212, 197, 238),
      ),
    );
  }
}
