import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:misfits/presentation/l10n/app_localizations.dart';
import 'package:misfits/presentation/routing/router.dart';
import 'package:misfits/presentation/routing/routes.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPath = GoRouterState.of(context).uri.path;
    final l = AppLocalizations.of(context)!;

    return Drawer(
      child: Column(
        children: [
          _DrawerHeader(),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const SizedBox(height: 8),
                _NavItem(
                  icon: Icons.home_outlined,
                  label: l.navHome,
                  isActive: currentPath == HomeRoute.fullPath,
                  onTap: () {
                    context.pop();
                    ref.read(routerProvider).go(const HomeRoute().location);
                  },
                ),
                _NavItem(
                  icon: Icons.category_outlined,
                  label: l.navTopics,
                  isActive: currentPath.startsWith(TopicsRoute.fullPath),
                  onTap: () {
                    context.pop();
                    ref.read(routerProvider).go(const TopicsRoute().location);
                  },
                ),
                _NavItem(
                  icon: Icons.group_outlined,
                  label: l.navPlayers,
                  isActive: currentPath == PlayersRoute.fullPath,
                  onTap: () {
                    context.pop();
                    ref.read(routerProvider).go(const PlayersRoute().location);
                  },
                ),
                _NavItem(
                  icon: Icons.settings_outlined,
                  label: l.navSettings,
                  isActive: currentPath == SettingsRoute.fullPath,
                  onTap: () {
                    context.pop();
                    ref.read(routerProvider).go(const SettingsRoute().location);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + 24,
        bottom: 24,
        left: 24,
        right: 24,
      ),
      child: const Text(
        'Misfits',
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.icon,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: ListTile(
        leading: Icon(icon, color: isActive ? Colors.black : Colors.black54),
        title: Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.black : Colors.black54,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        tileColor: isActive ? Colors.black12 : null,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        onTap: onTap,
      ),
    );
  }
}
