import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/core/helper/index.dart';
import 'package:whattoeattoday/src/core/styles/app_colors.dart';
import 'package:whattoeattoday/src/features/notifications/data/local/sample_list_noti.dart';
import 'package:whattoeattoday/src/features/notifications/domain/models/notification.dart';
import 'package:whattoeattoday/src/features/notifications/presentations/widgets/item_noti.dart';
import 'package:whattoeattoday/src/shared/presentation/widgets/header.dart';

enum NotificationTab { all, read, unread }

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  NotificationTab tabActive = NotificationTab.all;
  var isOpen = false;

  void _onTabSelected(NotificationTab tab) {
    setState(() {
      tabActive = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<NotificationModel> filteredNotifications =
        tabActive == NotificationTab.all
            ? sampleNotifications
            : sampleNotifications
                .where(
                  (notification) =>
                      tabActive == NotificationTab.read
                          ? notification.isRead
                          : !notification.isRead,
                )
                .toList();
    final grouped = groupNotificationsByDate(filteredNotifications);
    final sectionTitles = grouped.keys.toList();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
        child: Column(
          children: [
            Header(
              title: 'Notifications',
              haveBackIcon: false,
              haveRightIcon: false,
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () => _onTabSelected(NotificationTab.all),
                    style: TextButton.styleFrom(
                      backgroundColor:
                          tabActive == NotificationTab.all
                              ? AppColors.primaryColor
                              : AppColors.white,
                      foregroundColor:
                          tabActive == NotificationTab.all
                              ? AppColors.white
                              : AppColors.primaryColor,
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("All"),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextButton(
                    onPressed: () => _onTabSelected(NotificationTab.read),
                    style: TextButton.styleFrom(
                      backgroundColor:
                          tabActive == NotificationTab.read
                              ? AppColors.primaryColor
                              : AppColors.white,
                      foregroundColor:
                          tabActive == NotificationTab.read
                              ? AppColors.white
                              : AppColors.primaryColor,
                      textStyle: const TextStyle(fontSize: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("Read"),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextButton(
                    onPressed: () => _onTabSelected(NotificationTab.unread),
                    style: TextButton.styleFrom(
                      backgroundColor:
                          tabActive == NotificationTab.unread
                              ? AppColors.primaryColor
                              : AppColors.white,
                      foregroundColor:
                          tabActive == NotificationTab.unread
                              ? AppColors.white
                              : AppColors.primaryColor,
                      textStyle: const TextStyle(fontSize: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("Unread"),
                  ),
                ),
              ],
            ),

            // SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemCount: filteredNotifications.length,
                itemBuilder: (context, index) {
                  int runningIndex = 0;
                  for (final section in sectionTitles) {
                    // Section header
                    if (index == runningIndex) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              section,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    runningIndex++;

                    // Section items
                    final items = grouped[section]!;
                    if (index < runningIndex + items.length) {
                      final notification = items[index - runningIndex];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: ItemNoti(notification: notification),
                      );
                    }
                    runningIndex += items.length;
                  }
                  return const SizedBox.shrink();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
