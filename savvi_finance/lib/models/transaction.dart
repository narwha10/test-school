class Transaction {
  final String id;
  final double amount;
  final String category;
  final String? description;
  final DateTime date;
  final String pocketId;
  final String? goalId;

  Transaction({
    required this.id,
    required this.amount,
    required this.category,
    this.description,
    required this.date,
    required this.pocketId,
    this.goalId,
  });
}
