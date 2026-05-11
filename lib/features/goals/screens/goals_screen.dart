import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widgets/glass/glass_button.dart';
import '../../../core/widgets/glass/glass_card.dart';
import '../../../core/widgets/glass/scenic_background.dart';

class GoalsScreen extends StatefulWidget {
  const GoalsScreen({super.key});

  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  Widget _heroCard() {
    return GlassCard(
      radius: 34,
      opacity: 0.40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'GOALS',
            style: TextStyle(
              color: Color(0xFF4B3A2F),
              fontSize: 11,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Build the life\nyou imagine.',
            style: TextStyle(
              color: Color(0xFF2F241E),
              fontSize: 28,
              fontWeight: FontWeight.w700,
              height: 1.08,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Track dreams, milestones, habits, routines, finances, wellness, and long-term vision.',
            style: TextStyle(
              color: Color(0xFF7B6657),
              fontSize: 14,
              height: 1.45,
            ),
          ),
          const SizedBox(height: 22),
          GlassButton(
            label: 'Create Goal',
            icon: Icons.flag_outlined,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _overviewCard({
    required String label,
    required String value,
    required IconData icon,
  }) {
    return Expanded(
      child: GlassCard(
        radius: 24,
        opacity: 0.34,
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
            Icon(
              icon,
              color: const Color(0xFF6A4429),
              size: 22,
            ),
            const SizedBox(height: 10),
            Text(
              value,
              style: const TextStyle(
                color: Color(0xFF2F241E),
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF7B6657),
                fontSize: 11,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _goalCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required String progress,
  }) {
    return GlassCard(
      radius: 30,
      opacity: 0.42,
      child: Row(
        children: [
          Container(
            width: 58,
            height: 58,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF8A6548).withOpacity(0.16),
            ),
            child: Icon(
              icon,
              color: const Color(0xFF6A4429),
              size: 28,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFF2F241E),
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Color(0xFF7B6657),
                    fontSize: 13,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                progress,
                style: const TextStyle(
                  color: Color(0xFF2F241E),
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'done',
                style: TextStyle(
                  color: Color(0xFF7B6657),
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _visionCard() {
    return GlassCard(
      radius: 32,
      opacity: 0.44,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Vision Board',
            style: TextStyle(
              color: Color(0xFF2F241E),
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Upload dream homes, luxury inspiration, wellness goals, family goals, career visions, and future plans.',
            style: TextStyle(
              color: Color(0xFF7B6657),
              fontSize: 13,
              height: 1.45,
            ),
          ),
          const SizedBox(height: 18),
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.white.withOpacity(0.28),
            ),
            child: const Center(
              child: Icon(
                Icons.add_photo_alternate_outlined,
                size: 44,
                color: Color(0xFF6A4429),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bottomNav(BuildContext context) {
    return Container(
      height: 74,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.42),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: Colors.white.withOpacity(0.55),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavItem(
            icon: Icons.home_outlined,
            label: 'home',
            onTap: () {
              context.go('/home');
            },
          ),
          _NavItem(
            icon: Icons.flag,
            label: 'goals',
            active: true,
            onTap: () {},
          ),
          _NavItem(
            icon: Icons.favorite_border,
            label: 'health',
            onTap: () {
              context.go('/health');
            },
          ),
          _NavItem(
            icon: Icons.article_outlined,
            label: 'journal',
            onTap: () {
              context.go('/journal');
            },
          ),
          _NavItem(
            icon: Icons.menu,
            label: 'menu',
            onTap: () {
              context.go('/menu');
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8DED2),
      body: ScenicBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 12, 18, 14),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        context.go('/menu');
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                    const Expanded(
                      child: Center(
                        child: Text(
                          'Goals',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.22),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.55),
                        ),
                      ),
                      child: const Icon(
                        Icons.flag,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView(
                    children: [
                      const SizedBox(height: 18),
                      const Text(
                        'Dreams &\nambitions.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                          height: 1.05,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Your future beautifully mapped out.',
                        style: TextStyle(
                          color: Color(0xFFF0E6DE),
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 28),
                      _heroCard(),
                      const SizedBox(height: 18),
                      Row(
                        children: [
                          _overviewCard(
                            label: 'Goals',
                            value: '18',
                            icon: Icons.flag_outlined,
                          ),
                          const SizedBox(width: 10),
                          _overviewCard(
                            label: 'Habits',
                            value: '11',
                            icon: Icons.repeat,
                          ),
                          const SizedBox(width: 10),
                          _overviewCard(
                            label: 'Vision',
                            value: '92%',
                            icon: Icons.auto_awesome,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      _goalCard(
                        icon: Icons.favorite_outline,
                        title: 'Health Goals',
                        subtitle: 'Fitness, nutrition, healing, wellness, and routines.',
                        progress: '72%',
                      ),
                      const SizedBox(height: 14),
                      _goalCard(
                        icon: Icons.payments_outlined,
                        title: 'Financial Goals',
                        subtitle: 'Debt payoff, savings, income, and investments.',
                        progress: '41%',
                      ),
                      const SizedBox(height: 14),
                      _goalCard(
                        icon: Icons.workspace_premium_outlined,
                        title: 'Career Goals',
                        subtitle: 'Nursing school, certifications, and business growth.',
                        progress: '67%',
                      ),
                      const SizedBox(height: 14),
                      _goalCard(
                        icon: Icons.house_outlined,
                        title: 'Lifestyle Goals',
                        subtitle: 'Luxury home, routines, travel, peace, and structure.',
                        progress: '53%',
                      ),
                      const SizedBox(height: 20),
                      _visionCard(),
                      const SizedBox(height: 90),
                    ],
                  ),
                ),
                _bottomNav(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool active;
  final VoidCallback onTap;

  const _NavItem({
    required this.icon,
    required this.label,
    required this.onTap,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: active ? const Color(0xFF6A4429) : const Color(0xFF8E7868),
            size: 22,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color:
                  active ? const Color(0xFF6A4429) : const Color(0xFF8E7868),
              fontSize: 10,
              fontWeight: active ? FontWeight.w800 : FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
