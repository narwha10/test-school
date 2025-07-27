class Debt {
  final String id;
  final String personName;
  final double amount;
  final DateTime dueDate;
  final bool isPaid;
  final String type; // 'debt' or 'receivable'

  Debt({
    required this.id,
    required this.personName,
    required this.amount,
    required this.dueDate,
    required this.isPaid,
    required this.type,
  });
}
