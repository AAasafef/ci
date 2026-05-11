import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widgets/glass/glass_button.dart';
import '../../../core/widgets/glass/glass_card.dart';
import '../../../core/widgets/glass/scenic_background.dart';

class FitnessScreen extends StatefulWidget {
  const FitnessScreen({super.key});

  @override
  State<FitnessScreen> createState() =>
      _FitnessScreenState();
}

class _FitnessScreenState
    extends State<FitnessScreen> {
  Widget _heroCard() {
    return GlassCard(
      radius: 34,
      opacity: 0.40,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Text(
            'FITNESS',
            style: TextStyle(
              color: Color(0xFF4B3A2F),
              fontSize: 11,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Move your\nbody beautifully.',
            style: TextStyle(
              color: Color(0xFF2F241E),
              fontSize: 28,
              fontWeight: FontWeight.w700,
              height: 1.08,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Track workouts, steps, routines, goals, progress photos, strength, mobility, and wellness.',
            style: TextStyle(
              color: Color(0xFF7B6657),
              fontSize: 14,
              height: 1.45,
            ),
          ),
          const SizedBox(height: 22),
          GlassButton(
            label: 'Start Workout',
            icon: Icons.play_arrow,
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

  Widget _fitnessCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required String stat,
  }) {
    return GlassCard(
      radius: 30,
      opacity: 0.42,
      child: Row(
        children: [
          Container(
            width: 62,
            height: 62,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(20),
              color: const Color(
                0xFF8A6548,
              ).withOpacity(0.16),
            ),
            child: Icon(
              icon,
              color:
                  const Color(0xFF6A4429),
              size: 30,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color:
                        Color(0xFF2F241E),
                    fontSize: 18,
                    fontWeight:
                        FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color:
                        Color(0xFF7B6657),
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
                stat,
                style: const TextStyle(
                  color: Color(0xFF2F241E),
                  fontSize: 18,
                  fontWeight:
                      FontWeight.w900,
                ),
              ),
              const SizedBox(height: 4),
              const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF8A6D58),
                size: 14,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _progressCard() {
    return GlassCard(
      radius: 32,
      opacity: 0.44,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Text(
            'Progress Tracking',
            style: TextStyle(
              color: Color(0xFF2F241E),
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Store progress photos, measurements, milestones, and workout achievements.',
            style: TextStyle(
              color: Color(0xFF7B6657),
              fontSize: 13,
              height: 1.45,
            ),
          ),
          const SizedBox(height: 18),
          Container(
            height: 160,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(26),
              color: Colors.white
                  .withOpacity(0.24),
            ),
            child: const Center(
              child: Icon(
                Icons
                    .insert_chart_outlined,
                color:
                    Color(0xFF6A4429),
                size: 50,
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
      padding:
          const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(
          0.42,
        ),
        borderRadius:
            BorderRadius.circular(28),
        border: Border.all(
          color: Colors.white.withOpacity(
            0.55,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceAround,
        children: [
          _NavItem(
            icon: Icons.home_outlined,
            label: 'home',
            onTap: () {
              context.go('/home');
            },
          ),
          _NavItem(
            icon:
                Icons.fitness_center,
            label: 'fitness',
            active: true,
            onTap: () {},
          ),
          _NavItem(
            icon:
                Icons.favorite_border,
            label: 'health',
            onTap: () {
              context.go('/health');
            },
          ),
          _NavItem(
            icon:
                Icons.restaurant,
            label: 'food',
            onTap: () {
              context.go('/food');
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
      backgroundColor:
          const Color(0xFFE8DED2),
      floatingActionButton:
          FloatingActionButton(
        backgroundColor:
            const Color(0xFF8A5C34),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: ScenicBackground(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.fromLTRB(
              18,
              12,
              18,
              14,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        context.go('/menu');
                      },
                      icon: const Icon(
                        Icons
                            .arrow_back_ios_new,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                    const Expanded(
                      child: Center(
                        child: Text(
                          'Fitness',
                          style: TextStyle(
                            color:
                                Colors.white,
                            fontSize: 18,
                            fontWeight:
                                FontWeight
                                    .w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 42,
                      height: 42,
                      decoration:
                          BoxDecoration(
                        shape:
                            BoxShape.circle,
                        color: Colors.white
                            .withOpacity(
                          0.22,
                        ),
                        border: Border.all(
                          color: Colors
                              .white
                              .withOpacity(
                            0.55,
                          ),
                        ),
                      ),
                      child: const Icon(
                        Icons
                            .fitness_center,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 18,
                      ),
                      const Text(
                        'Fitness &\nmovement.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight:
                              FontWeight.w600,
                          height: 1.05,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Luxury wellness and movement tracking.',
                        style: TextStyle(
                          color:
                              Color(0xFFF0E6DE),
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      _heroCard(),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          _overviewCard(
                            label:
                                'Steps',
                            value:
                                '8,421',
                            icon:
                                Icons.directions_walk,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          _overviewCard(
                            label:
                                'Workouts',
                            value:
                                '5',
                            icon:
                                Icons.fitness_center,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          _overviewCard(
                            label:
                                'Calories',
                            value:
                                '640',
                            icon:
                                Icons.local_fire_department_outlined,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      _fitnessCard(
                        icon:
                            Icons.run_circle_outlined,
                        title:
                            'Cardio',
                        subtitle:
                            'Walking, treadmill, endurance, and calorie burn.',
                        stat:
                            '42m',
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _fitnessCard(
                        icon:
                            Icons.sports_gymnastics,
                        title:
                            'Strength',
                        subtitle:
                            'Weight training, resistance, and body goals.',
                        stat:
                            '4x',
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _fitnessCard(
                        icon:
                            Icons.self_improvement,
                        title:
                            'Stretching',
                        subtitle:
                            'Mobility, flexibility, yoga, and recovery.',
                        stat:
                            '22m',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      _progressCard(),
                      const SizedBox(
                        height: 90,
                      ),
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
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: active
                ? const Color(
                    0xFF6A4429,
                  )
                : const Color(
                    0xFF8E7868,
                  ),
            size: 22,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: active
                  ? const Color(
                      0xFF6A4429,
                    )
                  : const Color(
                      0xFF8E7868,
                    ),
              fontSize: 10,
              fontWeight: active
                  ? FontWeight.w800
                  : FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
