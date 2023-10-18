import 'package:expense_tracker/components/conta_item.dart';
import 'package:expense_tracker/models/cartao.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CartaoDetalhePage extends StatefulWidget {
  const CartaoDetalhePage({super.key});

  @override
  State<CartaoDetalhePage> createState() => _CartaoDetalhePageState();
}

class _CartaoDetalhePageState extends State<CartaoDetalhePage> {
  @override
  Widget build(BuildContext context) {
    final cartao = ModalRoute.of(context)!.settings.arguments as Cartao;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(cartao.cardHolderName),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: const Text('Numero cartão'),
              subtitle: Text(NumberFormat.simpleCurrency(locale: 'pt_BR')
                  .format(cartao.cardNumber)),
            ),
            ListTile(
              title: const Text('Nome cartão'),
              subtitle: Text(cartao.cardHolderName),
            ),
            ListTile(
              title: const Text('Data do vencimento'),
              subtitle: Text(DateFormat('dd/yyyy').format(cartao.expiryDate)),
            ),
            ListTile(
              title: const Text('CVV'),
              subtitle:
                  Text(cartao.cvvCode),
            ),
          ],
        ),
      ),
    );
  }
}
