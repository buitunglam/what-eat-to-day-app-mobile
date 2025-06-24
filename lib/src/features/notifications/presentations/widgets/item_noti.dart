import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:whattoeattoday/src/core/styles/app_colors.dart';
import 'package:whattoeattoday/src/features/notifications/domain/models/notification.dart';

class ItemNoti extends StatelessWidget {
  final NotificationModel notification;
  const ItemNoti({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 240, 238, 238),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    notification.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: AppColors.color121212,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    notification.body,
                    style: TextStyle(
                      color: AppColors.colorA9A9A9,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    timeago.format(notification.timestamp),
                    style: TextStyle(
                      color: AppColors.colorA9A9A9,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Image.asset(
              notification.isRead ? "assets/images/ic_noti_read.png" : "assets/images/ic_noti_unread.png",
              width: 30,
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
