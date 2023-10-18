import 'package:expense_tracker/components/cartao_item.dart';
import 'package:expense_tracker/models/cartao.dart';
import 'package:expense_tracker/repository/Cartao_repository.dart';
import 'package:flutter/material.dart';

class CartaoPage extends StatefulWidget {
  const CartaoPage({super.key});

  @override
  State<CartaoPage> createState() => _CartaoPageState();
}

class _CartaoPageState extends State<CartaoPage> {
  final CartaoRepo = CartaoRepository();
  late Future<List<Cartao>> futureCartao;

  @override
  void initState() {
    futureCartao = CartaoRepo.listarCartaos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartões'),
        actions: [
          // create a filter menu action
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: const Text('Todas'),
                  onTap: () {
                    setState(() {
                      futureCartao = CartaoRepo.listarCartaos();
                    });
                  },
                ),
                PopupMenuItem(
                  child: const Text('Receitas'),
                  onTap: () {
                    setState(() {
                      futureCartao = CartaoRepo.listarCartaos();
                    });
                  },
                ),
                PopupMenuItem(
                  child: const Text('Despesas'),
                  onTap: () {
                    setState(() {
                      futureCartao = CartaoRepo.listarCartaos();
                    });
                  },
                ),
              ];
            },
          ),
        ],
      ),
      body: FutureBuilder<List<Cartao>>(
        future: futureCartao,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("Erro ao carregar contas"),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text("Nenhuma conta encontrada"),
            );
          } else {
            final Cartao = snapshot.data!;
            return ListView.separated(
              itemCount: Cartao.length,
              itemBuilder: (context, index) {
                final cartao = Cartao[index];
                return CartaoItem(
                  cartao: cartao,
                  onTap: () {
                    Navigator.pushNamed(context, '/cartao-detalhes',
                        arguments: cartao);
                  },
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "transacao-cadastro",
        onPressed: () {
          Navigator.pushNamed(context, '/transacao-cadastro');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}














