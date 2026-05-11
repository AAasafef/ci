import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widgets/glass/glass_button.dart';
import '../../../core/widgets/glass/glass_card.dart';
import '../../../core/widgets/glass/scenic_background.dart';

class DreamHomeScreen extends StatefulWidget {
  const DreamHomeScreen({super.key});

  @override
  State<DreamHomeScreen> createState() =>
      _DreamHomeScreenState();
}

class _DreamHomeScreenState
    extends State<DreamHomeScreen> {
  Widget _heroCard() {
    return GlassCard(
      radius: 34,
      opacity: 0.40,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Text(
            'DREAM HOME',
            style: TextStyle(
              color: Color(0xFF4B3A2F),
              fontSize: 11,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Design your\nfuture life.',
            style: TextStyle(
              color: Color(0xFF2F241E),
              fontSize: 28,
              fontWeight: FontWeight.w700,
              height: 1.08,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Save inspiration for your dream house, luxury rooms, organization systems, furniture, and future lifestyle.',
            style: TextStyle(
              color: Color(0xFF7B6657),
              fontSize: 14,
              height: 1.45,
            ),
          ),
          const SizedBox(height: 22),
          GlassButton(
            label: 'Add Inspiration',
            icon: Icons.add_photo_alternate,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _roomCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required String count,
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
                count,
                style: const TextStyle(
                  color: Color(0xFF2F241E),
                  fontSize: 18,
                  fontWeight:
                      FontWeight.w900,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'saved',
                style: TextStyle(
                  color: Color(0xFF7B6657),
                  fontSize: 11,
                  fontWeight:
                      FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _visionBoardCard() {
    return GlassCard(
      radius: 32,
      opacity: 0.44,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
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
            'Create a luxury visual collage of your future dream lifestyle and home.',
            style: TextStyle(
              color: Color(0xFF7B6657),
              fontSize: 13,
              height: 1.45,
            ),
          ),
          const SizedBox(height: 18),
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(26),
              color: Colors.white
                  .withOpacity(0.26),
            ),
            child: GridView.count(
              padding:
                  const EdgeInsets.all(10),
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              physics:
                  const NeverScrollableScrollPhysics(),
              children: List.generate(
                4,
                (index) {
                  return Container(
                    decoration:
                        BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(
                        18,
                      ),
                      color: Colors.white
                          .withOpacity(
                        0.30,
                      ),
                    ),
                    child: const Icon(
                      Icons.image_outlined,
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
                Icons.house_outlined,
            label: 'dreamhome',
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
                Icons.article_outlined,
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
                          'Dream Home',
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
                        Icons.house,
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
                        'Dream\nspaces.',
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
                        'Design your future luxury lifestyle.',
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
                        height: 20,
                      ),
                      _roomCard(
                        title:
                            'Luxury Closet',
                        subtitle:
                            'Taupe shelving, chandeliers, gold accents, and beauty organization.',
                        icon:
                            Icons.checkroom_outlined,
                        count:
                            '28',
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _roomCard(
                        title:
                            'Dream Bathroom',
                        subtitle:
                            'Spa aesthetics, marble textures, gold fixtures, and calming luxury.',
                        icon:
                            Icons.bathtub_outlined,
                        count:
                            '16',
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _roomCard(
                        title:
                            'Kitchen Ideas',
                        subtitle:
                            'Luxury storage systems, smart appliances, and organization inspiration.',
                        icon:
                            Icons.kitchen_outlined,
                        count:
                            '22',
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _roomCard(
                        title:
                            'Beauty Room',
                        subtitle:
                            'Vanities, salon setups, luxury displays, and glam inspiration.',
                        icon:
                            Icons.chair_outlined,
                        count:
                            '34',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      _visionBoardCard(),
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
