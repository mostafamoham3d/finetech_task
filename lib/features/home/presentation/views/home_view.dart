import 'package:finetech_task/features/dashboard/presentation/views/dashboard_view.dart';
import 'package:finetech_task/features/home/presentation/controllers/home_cubit.dart';
import 'package:finetech_task/features/home/presentation/widgets/drawer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(
        drawer: const DrawerView(),
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: const DashboardView(),
        ),
      ),
    );
  }
}
