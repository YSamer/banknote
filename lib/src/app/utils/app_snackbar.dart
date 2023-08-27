import 'package:banknote/src/app/themes/app_spacing.dart';
import 'package:banknote/src/app/themes/app_typography.dart';
import 'package:banknote/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SnackBarStatus { success, failure }

class AppSnackbar {
  AppSnackbar._();

  static void show({
    required String title,
    required String message,
    required IconData icon,
    Duration? duration,
    SnackBarStatus? status = SnackBarStatus.success,
  }) {
    Get.snackbar(
      title,
      message,
      icon: Icon(
        icon,
        size: AppTypography.sizeXL,
        color: status == SnackBarStatus.success ? Colors.blue : Colors.red,
      ),
      titleText: TextBlocKWidget.body(
        title,
        color: status == SnackBarStatus.success ? Colors.blue : Colors.red,
      ),
      messageText: TextBlocKWidget.caption(
        message,
        color: Colors.white,
      ),
      snackPosition: SnackPosition.BOTTOM,
      borderRadius: AppSpacing.r_7,
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.red,
      padding: EdgeInsets.all(AppSpacing.s_8),
      margin: EdgeInsets.all(AppSpacing.s_12),
    );
  }
}
