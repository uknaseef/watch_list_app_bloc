import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ioring_test/core/theme/app_theme.dart';
import 'core/di/injection.dart' as di;
import 'features/watchlist/presentaion/bloc/watchlist_bloc.dart';
import 'features/watchlist/presentaion/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watchlist App',
      theme: AppTheme.lightTheme,
      home: BlocProvider(
        create: (context) => di.getIt<WatchlistBloc>(),
        child: const HomePage(),
      ),
    );
  }
}
