import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    this.title,
    required this.message,
  });
  final String? title;
  final String message;
  factory CustomAlertDialog.fromErr(({String type, String? message}) err) =>
      CustomAlertDialog(
        title: err.message == null ? null : err.type,
        message: err.message ?? err.type,
      );

  Future<void> show(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) => this,
      useRootNavigator: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    final localizations = MaterialLocalizations.of(context);
    return AlertDialog(
      title: title != null ? Text(title!) : null,
      content: SingleChildScrollView(
        child: SizedBox(
          width: 468,
          child: Text(message),
        ),
      ),
      actions: [
        TextButton(
            onPressed: () => Navigator.of(context).pop,
            child: Text(localizations.okButtonLabel)),
      ],
    );
  }
}

enum AlertType {
  info,
  error,
  success;

  ToastificationType get _toastificationType => switch (this) {
        info => ToastificationType.info,
        error => ToastificationType.error,
        success => ToastificationType.success
      };
}

class CustomToast extends StatelessWidget {
  const CustomToast(
    this.message, {
    super.key,
    this.type = AlertType.info,
    this.icon,
    this.duration = const Duration(seconds: 3),
  });
  final String message;
  final AlertType type;
  final IconData? icon;
  final Duration duration;

  const CustomToast.error(
    this.message, {
    super.key,
    this.duration = const Duration(seconds: 3),
  })  : type = AlertType.error,
        icon = FluentIcons.error_circle_24_regular;

  const CustomToast.success(
    this.message, {
    super.key,
    this.duration = const Duration(seconds: 3),
  })  : type = AlertType.success,
        icon = FluentIcons.checkmark_24_regular;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final color = switch (type) {
      AlertType.info => null,
      AlertType.error => colorScheme.error,
      AlertType.success => colorScheme.tertiary,
    };

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, color: color),
            const SizedBox(width: 8)
          ],
          Flexible(child: Text(message)),
        ],
      ),
    );
  }

  void show(BuildContext context) {
    toastification.show(
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
}
