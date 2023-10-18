import 'package:expense_tracker/components/conta_item.dart';
import 'package:expense_tracker/models/cartao.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
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
            Container(
              child: Column(
               children: [
            CreditCardWidget(
              onCreditCardWidgetChange: (CreditCardBrand brand) {
                // Você pode lidar com as alterações no widget do cartão de crédito aqui
              },
              cardNumber: cartao.cardNumber,
              expiryDate: cartao.expiryDate.toString(),
              cardHolderName: cartao.cardHolderName,
              cvvCode: cartao.cvvCode,
              showBackView: false,
            ),
            SizedBox(
              height: 20,
              width: 50,
            ), // Espaço entre o cartão de crédito e o texto
            Container(
              child: Column(
                children: [
                  Text(
                    'Limite do Cartão de Crédito',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                    width: 20,
                  ), // Espaço entre o texto e a barra de progresso
                  LinearProgressIndicator(
                    value:
                        0.5, // Defina o valor da barra de progresso conforme necessário (entre 0 e 1)
                  ),
                                    Text(
                    'total: ${cartao.limite}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
            )
          ],
        ),
      ),
    );
  }
}
