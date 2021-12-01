import 'package:cripto_moedas/repositories/moeda.repository.dart';
import 'package:flutter/material.dart';

class MoedaPage extends StatelessWidget {
  MoedaPage({Key? key}) : super(key: key);
  final tabela = MoedaRepository.tabela;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cripto Moeda"),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemBuilder: (BuildContext context, int moeda) {
            return ListTile(
                leading: Image.asset(tabela[moeda].icone),
                title: Text(tabela[moeda].nome),
                trailing: Text(tabela[moeda].preco.toString()),
                onTap: (){},
            );
          },
          padding: const EdgeInsets.all(16),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: tabela.length,
        ));
  }
}
