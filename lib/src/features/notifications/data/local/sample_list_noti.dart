import 'package:whattoeattoday/src/features/notifications/domain/models/notification.dart';

final List<NotificationModel> sampleNotifications = [
  NotificationModel(
    id: '1',
    title: 'Welcome to Our App!',
    body: 'Thank you for joining us. We hope you enjoy your experience.',
    timestamp: DateTime.now().subtract(Duration(days: 1)),
    isRead: false,
  ),
  NotificationModel(
    id: '2',
    title: 'New Features Available',
    body:
        'Check out the latest features we have added to enhance your experience.',
    timestamp: DateTime.now().subtract(Duration(hours: 5)),
    isRead: true,
  ),
  NotificationModel(
    id: '3',
    title: 'Reminder: Update Your Profile',
    body: 'Please update your profile information to get personalized content.',
    timestamp: DateTime.now().subtract(Duration(minutes: 30)),
    isRead: false,
  ),
  NotificationModel(
    id: '4',
    title: 'Weekly Newsletter',
    body: 'Read our latest newsletter for tips and updates.',
    timestamp: DateTime.now().subtract(Duration(days: 2)),
    isRead: true,
  ),
  NotificationModel(
    id: '5',
    title: 'Special Offer Just for You',
    body: 'Enjoy a special discount on your next purchase. Use code: SPECIAL20',
    timestamp: DateTime.now().subtract(Duration(hours: 1)),
    isRead: false,
  ),
  NotificationModel(
    id: '6',
    title: 'Feedback Request',
    body:
        'We value your feedback. Please take a moment to share your thoughts.',
    timestamp: DateTime.now().subtract(Duration(days: 3)),
    isRead: true,
  ),
  NotificationModel(
    id: '7',
    title: 'System Maintenance Scheduled',
    body: 'Our system will undergo maintenance on Sunday from 2 AM to 4 AM.',
    timestamp: DateTime.now().subtract(Duration(days: 4)),
    isRead: false,
  ),
  NotificationModel(
    id: '8',
    title: 'New Blog Post Available',
    body: 'Read our latest blog post on how to make the most of our app.',
    timestamp: DateTime.now().subtract(Duration(days: 5)),
    isRead: true,
  ),
  NotificationModel(
    id: '9',
    title: 'Account Security Alert',
    body:
        'We detected a login from a new device. If this was not you, please secure your account.',
    timestamp: DateTime.now().subtract(Duration(hours: 2)),
    isRead: false,
  ),
  NotificationModel(
    id: '10',
    title: 'Thank You for Your Purchase',
    body:
        'Your order has been successfully placed. Thank you for shopping with us!',
    timestamp: DateTime.now().subtract(Duration(minutes: 15)),
    isRead: false,
  ),
  NotificationModel(
    id: '11',
    title: 'Event Reminder',
    body: 'Don\'t forget about our upcoming event this Friday at 7 PM.',
    timestamp: DateTime.now().subtract(Duration(days: 6)),
    isRead: true,
  ),
];
