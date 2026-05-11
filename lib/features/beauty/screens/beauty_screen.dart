import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widgets/glass/glass_button.dart';
import '../../../core/widgets/glass/glass_card.dart';
import '../../../core/widgets/glass/scenic_background.dart';

class BeautyScreen extends StatefulWidget {
  const BeautyScreen({super.key});

  @override
  State<BeautyScreen> createState() =>
      _BeautyScreenState();
}

class _BeautyScreenState
    extends State<BeautyScreen> {
  Widget _heroCard() {
    return GlassCard(
      radius: 34,
      opacity: 0.40,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Text(
            'BEAUTY',
            style: TextStyle(
              color: Color(0xFF4B3A2F),
              fontSize: 11,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Your luxury\nbeauty hub.',
            style: TextStyle(
              color: Color(0xFF2F241E),
              fontSize: 28,
              fontWeight: FontWeight.w700,
              height: 1.08,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Track skincare, haircare, nails, beauty routines, products, appointments, and glow-up goals.',
            style: TextStyle(
              color: Color(0xFF7B6657),
              fontSize: 14,
              height: 1.45,
            ),
          ),
          const SizedBox(height: 22),
          GlassButton(
            label: 'Add Routine',
            icon: Icons.auto_awesome,
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

  Widget _beautyCard({
    required String title,
    required String subtitle,
    required IconData icon,
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

  Widget _beautyVaultCard() {
    return GlassCard(
      radius: 32,
      opacity: 0.44,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Text(
            'Beauty Vault',
            style: TextStyle(
              color: Color(0xFF2F241E),
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Save product photos, favorite looks, hairstyles, nail inspiration, and luxury routines.',
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
            child: GridView.count(
              padding:
                  const EdgeInsets.all(10),
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              physics:
                  const NeverScrollableScrollPhysics(),
              children: List.generate(
                6,
                (index) {
                  return Container(
                    decoration:
                        BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(
                        16,
                      ),
                      color: Colors.white
                          .withOpacity(
                        0.28,
                      ),
                    ),
                    child: const Icon(
                      Icons
                          .image_outlined,
                      color:
                          Color(0xFF6A4429),
                    ),
                  );
                },
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
                Icons.auto_awesome,
            label: 'beauty',
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
                Icons.shopping_bag_outlined,
            label: 'shopping',
            onTap: () {
              context.go('/shopping');
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
                          'Beauty',
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
                        Icons.auto_awesome,
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
                        'Beauty &\nglow.',
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
                        'Luxury beauty management.',
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
                                'Products',
                            value:
                                '84',
                            icon:
                                Icons.inventory_2_outlined,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          _overviewCard(
                            label:
                                'Routines',
                            value:
                                '12',
                            icon:
                                Icons.repeat,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          _overviewCard(
                            label:
                                'Appointments',
                            value:
                                '5',
                            icon:
                                Icons.calendar_today_outlined,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      _beautyCard(
                        title:
                            'Haircare',
                        subtitle:
                            'Extensions, silk presses, installs, and luxury routines.',
                        icon:
                            Icons.content_cut,
                        stat:
                            '22',
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _beautyCard(
                        title:
                            'Skincare',
                        subtitle:
                            'Glow tracking, products, hydration, and routines.',
                        icon:
                            Icons.spa_outlined,
                        stat:
                            '18',
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _beautyCard(
                        title:
                            'Nails',
                        subtitle:
                            'Luxury manicure inspiration and appointments.',
                        icon:
                            Icons.back_hand_outlined,
                        stat:
                            '14',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      _beautyVaultCard(),
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
