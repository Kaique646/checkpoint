class Cartao {
  String cardNumber;
  String cardHolderName;
  DateTime expiryDate;
  String cvvCode;
  int limite;

  Cartao({
    required this.cardNumber,
    required this.cardHolderName,
    required this.expiryDate,
    required this.cvvCode,
    required this.limite 
    });

  factory Cartao.fromMap(Map<String, dynamic> map) {
    return Cartao(
      cardNumber:  map['cardNumber'],
      cardHolderName:  map['cardHolderName'],
      expiryDate:  map['expiryDate'],
      cvvCode:  map['cvvCode'],
      limite: map['limite']
    );
  }
}
