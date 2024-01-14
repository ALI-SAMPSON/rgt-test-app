import 'package:intl/intl.dart';

class TFormatter {
  TFormatter._();

  /// --- format date
  static String formatDate({required DateFormat dateFormat, DateTime? date}) {
    date ??= DateTime.now();
    return dateFormat.format(date);
  }

  static String formatPhone({required String code, required String phone}) {
    var formatted = phone.startsWith('0') ? phone.substring(1) : phone;
    return '+$code$formatted';
  }

  /// --- format time
  static String formatTime({DateTime? date}) {
    date ??= DateTime.now();
    return DateFormat.jmv().format(date);
  }

  /// --- format currency
  static String formatCurrency({required double amount}) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String convertToAgo(DateTime input) {
    Duration diff = DateTime.now().difference(input);
    if (diff.inDays > 1) {
      return '${diff.inDays} days ago';
    } else if (diff.inDays == 1) {
      return '${diff.inDays} day ago';
    } else if (diff.inHours > 1) {
      return '${diff.inHours} hours ago';
    } else if (diff.inHours == 1) {
      return '${diff.inHours} hour ago';
    } else if (diff.inMinutes > 1) {
      return '${diff.inMinutes} minutes ago';
    } else if (diff.inMinutes == 1) {
      return '${diff.inMinutes} minute ago';
    } else if (diff.inSeconds > 1) {
      return '${diff.inSeconds} seconds ago';
    } else if (diff.inSeconds == 1) {
      return '${diff.inSeconds} second ago';
    } else {
      return 'just now';
    }
  }
}
