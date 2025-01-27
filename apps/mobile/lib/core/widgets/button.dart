import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/utils/ext/ext.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double? width;
  final Color? color;
  final Color? titleColor;
  final double? fontSize;
  final Color? splashColor;

  const Button({
    super.key,
    required this.title,
    required this.onPressed,
    this.width,
    this.color,
    this.titleColor,
    this.fontSize,
    this.splashColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(minWidth: width ?? context.widthInPercent(100)),
      margin: EdgeInsets.symmetric(vertical: Dimens.space8),
      height: Dimens.buttonH,
      width: width ?? double.infinity,
      decoration: BoxDecorations(context).button.copyWith(
            color: color ?? Theme.of(context).extension<LzyctColors>()!.blue,
            borderRadius: const BorderRadius.all(Radius.circular(8)).w,
          ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor:
              color ?? Theme.of(context).extension<LzyctColors>()!.blue,
          foregroundColor:
              Theme.of(context).extension<LzyctColors>()!.buttonText,
          padding: EdgeInsets.symmetric(horizontal: Dimens.space24),
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(Dimens.cornerRadius),
            ),
          ),
        ),
        child: Text(
          title.toUpperCase(),
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Theme.of(context).extension<LzyctColors>()!.background,
              ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
