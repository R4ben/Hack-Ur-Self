import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hack_ur_self/core/logger/logger_mixins.dart';
import 'package:hack_ur_self/core/model/failures.dart';
import 'package:hack_ur_self/features/common/adaptive_root_scaffold.dart';
import 'package:hack_ur_self/utils/alerts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:toastification/toastification.dart';

part 'in_app_notification_controller.g.dart';

@Riverpod(keepAlive: true)
InAppNotificationController inAppNotificationController(
    InAppNotificationControllerRef ref) {
  return InAppNotificationController();
}

enum NotificationType {
  info,
  error,
  success,
}

extension NotificationTypeX on NotificationType {
  ToastificationType get _toastificationType => switch (this) {
        NotificationType.info => ToastificationType.info,
        NotificationType.error => ToastificationType.error,
        NotificationType.success => ToastificationType.success,
      };
}

class InAppNotificationController with AppLogger {
  ToastificationItem showToast(
    BuildContext context,
    String message, {
    NotificationType type = NotificationType.info,
    Duration duration = const Duration(seconds: 2),
  }) {
    return toastification.show(
      context: context,
      title: Text(message),
      type: type._toastificationType,
      alignment: Alignment.bottomLeft,
      autoCloseDuration: duration,
      style: ToastificationStyle.fillColored,
      pauseOnHover: true,
      showProgressBar: false,
      dragToClose: true,
      closeOnClick: true,
      closeButtonShowType: CloseButtonShowType.onHover,
    );
  }

  ToastificationItem? showErrorToast(String message) {
    final context = RootScaffold.stateKey.currentContext;
    if (context == null) {
      loggy.warning('context is null');
      return null;
    }
    return showToast(context, message,
        type: NotificationType.error, duration: const Duration(seconds: 4));
  }

  ToastificationItem? showSuccessToast(String message) {
    final context = RootScaffold.stateKey.currentContext;
    if (context == null) {
      loggy.warning('context is null');
      return null;
    }
    return showToast(context, message,
        type: NotificationType.success, duration: const Duration(seconds: 4));
  }

  ToastificationItem? showInfoToast(String message,
      {Duration duration = const Duration(seconds: 3)}) {
    final context = RootScaffold.stateKey.currentContext;
    if (context == null) {
      loggy.warning('context is null');
      return null;
    }
    return showToast(context, message,
        type: NotificationType.info, duration: duration);
  }

  Future<void> showErrorDialog(PresentableError error) async {
    final context = RootScaffold.stateKey.currentContext;
    if (context == null) {
      loggy.warning('context is null');
      return;
    }
    CustomAlertDialog.fromErr(error).show(context);
  }

  void showActionToast(
    String message, {
    required String actionText,
    required VoidCallback callback,
    Duration duration = const Duration(seconds: 5),
  }) {
    final context = RootScaffold.stateKey.currentContext;
    if (context == null) return;
    toastification.dismissAll();
    toastification.showCustom(
      context: context,
      autoCloseDuration: duration,
      alignment: Alignment.bottomLeft,
      builder: (context, holder) {
        return GestureDetector(
          onTap: () => toastification.dismiss(holder),
          child: Card(
            margin: const EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Row(
                children: [
                  Expanded(child: Text(message)),
                  const Gap(8),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            toastification.dismiss(holder);
                            callback;
                          },
                          child: Text(actionText))
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
