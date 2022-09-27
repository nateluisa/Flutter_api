import 'package:bottom_api/pages/salles/list_salle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Menu());
}

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.endDocked;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 212, 197, 238),
          automaticallyImplyLeading: false,
          title: const Text(''),
        ),
        body: Container(
          child: Column(
            children: [
              Text('Teste de main')
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(

          backgroundColor: Color.fromARGB(255, 175, 154, 255),
          onPressed: () {
            print('voltou pra home');
          },
          tooltip: 'Inicio',
          child: const Icon(Icons.home),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: _DemoBottomAppBar(
          fabLocation: _fabLocation,
        ),
      ),
    );
  }
}

class _DemoBottomAppBar extends StatelessWidget {
  const _DemoBottomAppBar({
    this.fabLocation = FloatingActionButtonLocation.endDocked,
    this.shape = const CircularNotchedRectangle(),
  });

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape? shape;

  static final List<FloatingActionButtonLocation> centerLocations =
      <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: shape,
      color: Color.fromARGB(255, 212, 197, 238),
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            IconButton(
              tooltip: 'Vendas',
              icon: const Icon(Icons.sell),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => SallesScreen(sallesContext: context,),
                  ),
                );
              },
            ),
            if (centerLocations.contains(fabLocation)) const Spacer(),
            IconButton(
              tooltip: 'Financeiro',
              icon: const Icon(Icons.monetization_on_rounded),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Compras',
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
