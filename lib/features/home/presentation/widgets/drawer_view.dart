import 'package:finetech_task/core/utils/assets.dart';
import 'package:finetech_task/features/home/presentation/controllers/home_cubit.dart';
import 'package:finetech_task/features/home/presentation/widgets/drawer_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({
    super.key,
  });
  static List<Map<String, dynamic>> items = [
    {
      'title': 'Dashboard',
      'icon': Assets.assetsIconsDashboardIc,
    },
    {
      'title': 'Statstics',
      'icon': Assets.assetsIconsStatsIc,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Drawer(
          backgroundColor: Colors.white,
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(
                top: 36,
              ),
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Column(
                children: items
                    .map(
                      (item) =>
                          items.indexOf(item) == state.selectedHomePageIndex
                              ? SelectedDrawerListItem(
                                  title: item['title'],
                                  icon: item['icon'],
                                )
                              : GestureDetector(
                                  onTap: () => context
                                      .read<HomeCubit>()
                                      .changeSelectedHomePageIndex(
                                        items.indexOf(
                                          item,
                                        ),
                                      ),
                                  child: UnSelectedDrawerListItem(
                                    title: item['title'],
                                    icon: item['icon'],
                                  ),
                                ),
                    )
                    .toList(),
              ),
            ),
          ),
        );
      },
    );
  }
}
