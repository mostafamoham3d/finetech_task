import 'package:finetech_task/features/dashboard/presentation/views/dashboard_view.dart';
import 'package:finetech_task/features/graph/presentation/views/graph_view.dart';
import 'package:finetech_task/features/home/presentation/controllers/home_cubit.dart';
import 'package:finetech_task/features/home/presentation/widgets/drawer_view.dart';
import 'package:finetech_task/features/orders/data/repos/orders_repo.dart';
import 'package:finetech_task/features/orders/domain/services/orders_service.dart';
import 'package:finetech_task/features/orders/presentation/controllers/orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static List<Widget> screens = [
    const DashboardView(),
    const GraphView(),
  ];
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
        BlocProvider(
          create: (context) => OrdersCubit(
        ordersRepo: OrdersRepo(),
        ordersService: OrdersService(),
      ),
        ),
      ],
      child: Builder(builder: (context) {
        return Scaffold(
          drawer: const DrawerView(),
          appBar: AppBar(),
          body: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: screens[state.selectedHomePageIndex],
              );
            },
          ),
        );
      }),
    );
  }
}
