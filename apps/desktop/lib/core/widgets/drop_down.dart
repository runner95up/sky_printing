import 'package:flutter/material.dart';
import 'package:sky_printing_admin/core/core.dart';

///*********************************************
/// Created by ukietux on 01/11/20 with ♥
/// (>’_’)> email : ukie.tux@gmail.com
/// github : https://www.github.com/Lzyct <(’_’<)
///*********************************************
/// © 2020 | All Right Reserved
class DropDown<T> extends StatefulWidget {
  const DropDown({
    super.key,
    required this.value,
    required this.items,
    this.hint,
    required this.onChanged,
    this.hintIsVisible = true,
    this.prefixIcon,
  });
  final T value;
  final List<DropdownMenuItem<T>> items;
  final bool hintIsVisible;
  final String? hint;
  final ValueChanged<T?>? onChanged;
  final Widget? prefixIcon;

  @override
  _DropDownState<T> createState() => _DropDownState();
}

class _DropDownState<T> extends State<DropDown<T>> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimens.space8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.hintIsVisible) ...{
            Text(
              widget.hint ?? "",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Theme.of(context).hintColor),
            ),
            SpacerV(value: Dimens.space6),
          },
          ButtonTheme(
            key: widget.key,
            alignedDropdown: true,
            padding: EdgeInsets.zero,
            child: DropdownButtonFormField<T>(
              isExpanded: true, 
              icon: const Icon(Icons.arrow_drop_down),
              decoration: InputDecoration(
                alignLabelWithHint: true,
                isDense: true,
                isCollapsed: true,
                filled: true, 
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: Dimens.space12),
                  child: widget.prefixIcon,
                ),
                prefixIconConstraints: BoxConstraints(
                  minHeight: Dimens.space24,
                  maxHeight: Dimens.space24,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: Dimens.space12),
                enabledBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(Dimens.space4), 
                ),
                border: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(Dimens.space4),
                  borderSide: BorderSide(color: Theme.of(context).cardColor),
                ),
                disabledBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(Dimens.space4),
                  borderSide: BorderSide(color: Theme.of(context).cardColor),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(Dimens.space4), 
                ),
                errorBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(Dimens.space4), 
                ),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(Dimens.space4), 
                ),
              ),
              value: widget.value,
              items: widget.items,
              onChanged: widget.onChanged,
            ),
          )
        ],
      ),
    );
  }
}
