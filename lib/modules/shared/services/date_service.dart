import 'package:intl/intl.dart';

String formatDate({required String date, String format = "dd MMM yyyy"}) {
  final parsedDate = DateTime.parse(date);
  final formattedDate = DateFormat(format).format(parsedDate);
  return formattedDate;
}
