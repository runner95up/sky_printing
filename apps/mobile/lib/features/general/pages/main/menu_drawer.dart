import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/utils/ext/ext.dart';
import 'package:sky_printing/utils/utils.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({
    super.key,
    required this.dataMenu,
    required this.currentIndex,
    required this.onLogoutPressed,
  });

  final List<DataHelper> dataMenu;
  final Function(int) currentIndex;
  final VoidCallback onLogoutPressed;

  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: context.widthInPercent(100),
            height: Dimens.header,
            padding: EdgeInsets.symmetric(horizontal: Dimens.space16),
            color: Theme.of(context).extension<LzyctColors>()!.card,
            child: SafeArea(
              child: Row(
                children: [
                  const SpacerH(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Lazycat Labs",
                          style: Theme.of(context)
                              .textTheme
                              .titleLargeBold
                              ?.copyWith(color: Theme.of(context).primaryColor),
                        ),
                        Text(
                          "lzyct@lazycatlabs.com",
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Theme.of(context)
                                        .extension<LzyctColors>()!
                                        .shadow,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SpacerV(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.dataMenu
                .map<Widget>(
                  (value) => SizedBox(
                    width: double.maxFinite,
                    child: InkWell(
                      onTap: () {
                        for (final menu in widget.dataMenu) {
                          menu.isSelected = menu.title == value.title;

                          if (value.title != null) {
                            widget.currentIndex(
                              widget.dataMenu.indexOf(value),
                            );
                          }
                        }

                        _selectedPage(value.title!);
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: Dimens.space12,
                          horizontal: Dimens.space24,
                        ),
                        child: Text(
                          value.title!,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ), //
          const SpacerH(),
        ],
      ),
    );
  }

  void _selectedPage(String title) {
    //Update page from selected Page
    if (title == Strings.of(context)!.settings) {
      context.goNamed(Routes.settings.name);
    } else if (title == Strings.of(context)!.dashboard) {
      context.goNamed(Routes.dashboard.name);
    } else if (title == Strings.of(context)!.logout) {
      widget.onLogoutPressed.call();
    }
  }
}