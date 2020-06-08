class DailyTransaction {
  String id;
  String userId;
  String transactionType;
  double amount;
  String timeDate;

  DailyTransaction({
    this.id,
    this.userId,
    this.transactionType,
    this.amount,
    this.timeDate,
  });
}

List<DailyTransaction> dailyTransactiions = [
  DailyTransaction(
    id: 'trans1',
    userId: 'cont1',
    transactionType: 'Debit',
    amount: 300,
    timeDate: '7:58pm 07/06/2020',
  ),
  DailyTransaction(
    id: 'trans2',
    userId: 'cont2',
    transactionType: 'Credit',
    amount: 300,
    timeDate: '7:58pm 07/06/2020',
  ),
  DailyTransaction(
    id: 'trans3',
    userId: 'cont3',
    transactionType: 'Credit',
    amount: 300,
    timeDate: '7:58pm 07/06/2020',
  ),
  DailyTransaction(
    id: 'trans4',
    userId: 'cont4',
    transactionType: 'Debit',
    amount: 300,
    timeDate: '7:58pm 07/06/2020',
  ),
];
