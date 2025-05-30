import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile_page/features/theme/bloc/theme_bloc.dart';
import 'package:profile_page/features/theme/bloc/theme_event.dart';
import 'package:profile_page/features/theme/bloc/theme_state.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Настройки')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Тёмная тема'),
            trailing: BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return Switch(
                  value: state.themeMode == ThemeMode.dark,
                  onChanged: (_) {
                    context.read<ThemeBloc>().add(ToggleThemeEvent());
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
