import 'package:expense_tracker/components/categoria_select.dart';
import 'package:expense_tracker/models/categoria.dart';
import 'package:expense_tracker/models/tipo_transacao.dart';
import 'package:expense_tracker/pages/categorias_select_page.dart';
import 'package:expense_tracker/pages/contas_select_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';

import '../components/conta_select.dart';
import '../models/conta.dart';

class cartaoCadastroPage extends StatefulWidget {
  const cartaoCadastroPage({super.key});

  @override
  State<cartaoCadastroPage> createState() => _cartaoCadastroPageState();
}

class _cartaoCadastroPageState extends State<cartaoCadastroPage> {
  final descricaoController = TextEditingController();
  final valorController = MoneyMaskedTextController(
      decimalSeparator: ',', thousandSeparator: '.', leftSymbol: 'R\$');

  final dataController = TextEditingController();

  final detalhesController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  Categoria? categoriaSelecionada;
  Conta? contaSelecionada;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Cartão'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                _buildNumero(),
                const SizedBox(height: 30),
                _buildNome(),
                                const SizedBox(height: 30),
                Row(
                  children: [
                    Container(
  width: MediaQuery.of(context).size.width / 2.1, // Define a largura como metade da largura da tela
  child: _buildData()),
                    Container(
  width: MediaQuery.of(context).size.width / 2.1, // Define a largura como metade da largura da tela
  child: _buildCVV()),
                  ],
                ),
                const SizedBox(height: 30),
                _buildButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  ContaSelect _buildContaSelect() {
    return ContaSelect(
      conta: contaSelecionada,
      onTap: () async {
        final result = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ContasSelectPage(),
          ),
        ) as Conta?;

        if (result != null) {
          setState(() {
            contaSelecionada = result;
          });
        }
      },
    );
  }

  TextFormField _buildNumero() {
    return TextFormField(
      controller: descricaoController,
      decoration: const InputDecoration(
        hintText: 'Informe o numero do cartão',
        labelText: 'Numero do cartão',
        prefixIcon: Icon(Ionicons.text_outline),
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Informe o numero do cartão';
        }
        if (value.length < 5 || value.length > 30) {
          return 'numero do cartão invalido';
        }
        return null;
      },
    );
  }

  TextFormField _buildNome() {
    return TextFormField(
      controller: descricaoController,
      decoration: const InputDecoration(
        hintText: 'Informe o nome do cartão',
        labelText: 'Nome do cartão',
        prefixIcon: Icon(Ionicons.text_outline),
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Informe um nome';
        }
        if (value.length < 5 || value.length > 30) {
          return 'O nome deve entre 5 e 30 caracteres';
        }
        return null;
      },
    );
  }

  TextFormField _buildCVV() {
    return TextFormField(
      controller: descricaoController,
      decoration: const InputDecoration(
        hintText: 'Informe o CVV',
        labelText: 'CVV',
        prefixIcon: Icon(Ionicons.text_outline),
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Informe O CVV';
        }
        if (value.length != 3) {
          return 'CVV invalido';
        }
        return null;
      },
    );
  }

  TextFormField _buildData() {
    return TextFormField(
      controller: dataController,
      keyboardType: TextInputType.none,
      decoration: const InputDecoration(
        hintText: 'Informe a Data de validade',
        labelText: 'Data de valdide',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Ionicons.calendar_outline),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Informe uma Data';
        }

        try {
          DateFormat('MM/yyyy').parse(value);
        } on FormatException {
          return 'Formato de data inválida';
        }

        return null;
      },
      onTap: () async {
        //FocusScope.of(context).requestFocus(FocusNode());

        DateTime? dataSelecionada = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
        );

        if (dataSelecionada != null) {
          dataController.text = DateFormat('MM/yyyy').format(dataSelecionada);
        }
      },
    );
  }

  SizedBox _buildButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          final isValid = _formKey.currentState!.validate();
          if (isValid) {
            final descricao = descricaoController.text;

            
          }
        },
        child: const Text('Cadastrar'),
      ),
    );
  }
}

