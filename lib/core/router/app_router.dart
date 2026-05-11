import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/activity/screens/activity_screen.dart';
import '../../features/beauty/screens/beauty_screen.dart';
import '../../features/calendar/screens/calendar_screen.dart';
import '../../features/documents/screens/document_vault_screen.dart';
import '../../features/dreamhome/screens/dream_home_screen.dart';
import '../../features/family/screens/family_screen.dart';
import '../../features/finance/screens/finance_screen.dart';
import '../../features/fitness/screens/fitness_screen.dart';
import '../../features/food/screens/food_tracker_screen.dart';
import '../../features/goals/screens/goals_screen.dart';
import '../../features/health/screens/health_dashboard_screen.dart';
import '../../features/home/screens/home_dashboard_screen.dart';
import '../../features/journal/screens/journal_screen.dart';
import '../../features/mentalwellness/screens/mental_wellness_screen.dart';
import '../../features/menu/screens/menu_screen.dart';
import '../../features/products/screens/products_screen.dart';
import '../../features/school/screens/school_screen.dart';
import '../../features/selfcare/screens/selfcare_screen.dart';
import '../../features/services/screens/services_screen.dart';
import '../../features/settings/screens/settings_screen.dart';
import '../../features/shopping/screens/shopping_screen.dart';
import '../../features/work/screens/work_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(path: '/home', builder: (context, state) => const HomeDashboardScreen()),
    GoRoute(path: '/menu', builder: (context, state) => const MenuScreen()),
    GoRoute(path: '/health', builder: (context, state) => const HealthDashboardScreen()),
    GoRoute(path: '/journal', builder: (context, state) => const JournalScreen()),
    GoRoute(path: '/services', builder: (context, state) => const ServicesScreen()),
    GoRoute(path: '/products', builder: (context, state) => const ProductsScreen()),
    GoRoute(path: '/settings', builder: (context, state) => const SettingsScreen()),
    GoRoute(path: '/activity', builder: (context, state) => const ActivityScreen()),
    GoRoute(path: '/finance', builder: (context, state) => const FinanceScreen()),
    GoRoute(path: '/family', builder: (context, state) => const FamilyScreen()),
    GoRoute(path: '/school', builder: (context, state) => const SchoolScreen()),
    GoRoute(path: '/work', builder: (context, state) => const WorkScreen()),
    GoRoute(path: '/selfcare', builder: (context, state) => const SelfCareScreen()),
    GoRoute(path: '/goals', builder: (context, state) => const GoalsScreen()),
    GoRoute(path: '/documents', builder: (context, state) => const DocumentVaultScreen()),
    GoRoute(path: '/food', builder: (context, state) => const FoodTrackerScreen()),
    GoRoute(path: '/calendar', builder: (context, state) => const CalendarScreen()),
    GoRoute(path: '/shopping', builder: (context, state) => const ShoppingScreen()),
    GoRoute(path: '/dreamhome', builder: (context, state) => const DreamHomeScreen()),
    GoRoute(path: '/mentalwellness', builder: (context, state) => const MentalWellnessScreen()),
    GoRoute(path: '/fitness', builder: (context, state) => const FitnessScreen()),
    GoRoute(path: '/beauty', builder: (context, state) => const BeautyScreen()),
  ],
);

class AppRouterPlaceholder extends StatelessWidget {
  final String title;

  const AppRouterPlaceholder({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8DED2),
      body: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Color(0xFF2F241E),
          ),
        ),
      ),
    );
  }
}
