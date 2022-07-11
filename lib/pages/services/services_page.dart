import 'package:flutter/material.dart';

import 'widgets/card_services.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.brown.shade700,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.orange,
        title: const Text(
          'Serviços',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: size.height,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: const [
                CardService(
                  type: "Corte Cabelo",
                  time: "30 min",
                  value: "35,00",
                ),
                CardService(
                  type: "Barba",
                  time: "30 min",
                  value: "30,00",
                ),
                CardService(
                  type: "Relaxamento",
                  time: "15 min",
                  value: "30,00",
                ),
                CardService(
                  type: "Limpeza de Ouvido",
                  time: "15 min",
                  value: "30,00",
                ),
                CardService(
                  type: "Platinado",
                  time: "1 hora",
                  value: "180,00",
                ),
                CardService(
                  type: "Reconstrução Capilar",
                  time: "15 min",
                  value: "30,00",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
