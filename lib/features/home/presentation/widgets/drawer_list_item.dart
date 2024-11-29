import 'package:finetech_task/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SelectedDrawerListItem extends StatelessWidget {
  final String title;
  final String icon;
  const SelectedDrawerListItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: AppColors.mainColor,
              ),
        ),
        leading: SvgPicture.asset(icon),
        trailing: Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          width: 4,
          color: AppColors.mainColor,
        ),
      ),
    );
  }
}

class UnSelectedDrawerListItem extends StatelessWidget {
  final String title;
  final String icon;
  const UnSelectedDrawerListItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 12,
      ),
      child: ListTile(
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(),
        ),
        leading: SvgPicture.asset(icon),
      ),
    );
  }
}
