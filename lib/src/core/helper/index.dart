import 'package:intl/intl.dart';
import 'package:whattoeattoday/src/features/notifications/domain/models/notification.dart';

Map<String, List<NotificationModel>> groupNotificationsByDate(
  List<NotificationModel> notifications,
) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final yesterday = today.subtract(const Duration(days: 1));

  Map<String, List<NotificationModel>> grouped = {};

  for (var notification in notifications) {
    final date = DateTime(
      notification.timestamp.year,
      notification.timestamp.month,
      notification.timestamp.day,
    );
    String key;
    if (date == today) {
      key = 'Today';
    } else if (date == yesterday) {
      key = 'Yesterday';
    } else {
      key = DateFormat('yyyy/MM/dd').format(date); // Show date for earlier
    }
    grouped.putIfAbsent(key, () => []).add(notification);
  }

  return grouped;
}
