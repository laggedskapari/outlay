import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category {
  personal,
  medical,
  education,
  work,
  entertainment,
  travel,
  food,
}

enum AmountType {
  credit,
  debit,
}

class Outlay {
  final String id;
  final String title;
  final Category outlayCategory;
  final AmountType outlayType;
  final double outlayAmount;
  final DateTime outlayDate;

  Outlay({
    required this.outlayAmount,
    required this.outlayCategory,
    required this.outlayDate,
    required this.outlayType,
    required this.title,
  }) : id = uuid.v4();
}
