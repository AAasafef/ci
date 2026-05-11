import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widgets/glass/glass_button.dart';
import '../../../core/widgets/glass/glass_card.dart';
import '../../../core/widgets/glass/scenic_background.dart';

class TravelScreen extends StatefulWidget {
  const TravelScreen({super.key});

  @override
  State<TravelScreen> createState() =>
      _TravelScreenState();
}

class _TravelScreenState
    extends State<TravelScreen> {
  Widget _heroCard() {
    return GlassCard(
      radius: 34,
      opacity: 0.40,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Text(
            'TRAVEL',
            style: TextStyle(
              color: Color(0xFF4B3A2F),
              fontSize: 11,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Plan your\nfuture escapes.',
            style: TextStyle(
              color: Color(0xFF2F241E),
              fontSize: 28,
              fontWeight: FontWeight.w700,
              height: 1.08,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Track dream vacations, hotels, flights, travel inspiration, packing lists, and future adventures.',
            style: TextStyle(
              color: Color(0xFF7B6657),
              fontSize: 14,
              height: 1.45,
            ),
          ),
          const SizedBox(height: 22),
          GlassButton(
            label: 'Plan Trip',
            icon: Icons.flight_takeoff,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _tripCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required String status,
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
          Container(
            padding:
                const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            decoration:
                BoxDecoration(
              borderRadius:
                  BorderRadius.circular(
                20,
              ),
              color: Colors.white
                  .withOpacity(0.26),
            ),
            child: Text(
              status,
              style:
                  const TextStyle(
                color:
                    Color(0xFF6A4429),
                fontSize: 11,
                fontWeight:
                    FontWeight.w700,
              ),
            ),
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
        padding:
            const EdgeInsets.all(14),
        child: Column(
          children: [
            Icon(
              icon,
              color: const Color(
                0xFF6A4429,
              ),
              size: 22,
            ),
            const SizedBox(height: 10),
            Text(
              value,
              style: const TextStyle(
                color: Color(
                  0xFF2F241E,
                ),
                fontSize: 22,
                fontWeight:
                    FontWeight.w800,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              textAlign:
                  TextAlign.center,
              style: const TextStyle(
                color: Color(
                  0xFF7B6657,
                ),
                fontSize: 11,
                fontWeight:
                    FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _travelVisionCard() {
    return GlassCard(
      radius: 32,
      opacity: 0.44,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Text(
            'Travel Vision Board',
            style: TextStyle(
              color: Color(0xFF2F241E),
              fontSize: 22,
              fontWeight:
                  FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Save luxury destinations, hotels, restaurants, activities, and dream experiences.',
            style: TextStyle(
              color: Color(0xFF7B6657),
              fontSize: 13,
              height: 1.45,
            ),
          ),
          const SizedBox(height: 18),
          Container(
            height: 170,
            decoration:
                BoxDecoration(
              borderRadius:
                  BorderRadius.circular(
                26,
              ),
              color: Colors.white
                  .withOpacity(0.24),
            ),
            child: GridView.count(
              padding:
                  const EdgeInsets.all(
                10,
              ),
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
                        0.28,
                      ),
                    ),
                    child: const Icon(
                      Icons
                          .landscape_outlined,
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

  Widget _bottomNav(
    BuildContext context,
  ) {
    return Container(
      height: 74,
      padding:
          const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        color: Colors.white
            .withOpacity(0.42),
        borderRadius:
            BorderRadius.circular(
          28,
        ),
        border: Border.all(
          color: Colors.white
              .withOpacity(0.55),
        ),
      ),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment
                .spaceAround,
        children: [
          _NavItem(
            icon:
                Icons.home_outlined,
            label: 'home',
            onTap: () {
              context.go('/home');
            },
          ),
          _NavItem(
            icon:
                Icons.flight_takeoff,
            label: 'travel',
            active: true,
            onTap: () {},
          ),
          _NavItem(
            icon:
                Icons.calendar_month,
            label: 'calendar',
            onTap: () {
              context.go('/calendar');
            },
          ),
          _NavItem(
            icon:
                Icons.favorite_border,
            label: 'goals',
            onTap: () {
              context.go('/goals');
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
  Widget build(
    BuildContext context,
  ) {
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
                        context.go(
                          '/menu',
                        );
                      },
                      icon: const Icon(
                        Icons
                            .arrow_back_ios_new,
                        color:
                            Colors.white,
                        size: 18,
                      ),
                    ),
                    const Expanded(
                      child: Center(
                        child: Text(
                          'Travel',
                          style:
                              TextStyle(
                            color: Colors
                                .white,
                            fontSize:
                                18,
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
                        shape: BoxShape
                            .circle,
                        color: Colors
                            .white
                            .withOpacity(
                          0.22,
                        ),
                        border:
                            Border.all(
                          color: Colors
                              .white
                              .withOpacity(
                            0.55,
                          ),
                        ),
                      ),
                      child:
                          const Icon(
                        Icons.flight,
                        color: Colors
                            .white,
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
                        'Luxury\ntravel.',
                        style:
                            TextStyle(
                          color: Colors
                              .white,
                          fontSize:
                              34,
                          fontWeight:
                              FontWeight
                                  .w600,
                          height: 1.05,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Dream destinations beautifully planned.',
                        style:
                            TextStyle(
                          color: Color(
                            0xFFF0E6DE,
                          ),
                          fontSize:
                              14,
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
                                'Trips',
                            value:
                                '12',
                            icon: Icons
                                .flight_takeoff,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          _overviewCard(
                            label:
                                'Hotels',
                            value:
                                '28',
                            icon: Icons
                                .hotel_outlined,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          _overviewCard(
                            label:
                                'Saved',
                            value:
                                '\$4k',
                            icon: Icons
                                .payments_outlined,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      _tripCard(
                        title:
                            'Dubai',
                        subtitle:
                            'Luxury shopping, skyline hotels, and fine dining.',
                        icon:
                            Icons.location_city,
                        status:
                            'Planned',
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _tripCard(
                        title:
                            'Paris',
                        subtitle:
                            'Fashion, luxury cafes, museums, and architecture.',
                        icon:
                            Icons
                                .restaurant_outlined,
                        status:
                            'Dream',
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _tripCard(
                        title:
                            'Maldives',
                        subtitle:
                            'Luxury overwater villas and wellness retreats.',
                        icon:
                            Icons.beach_access,
                        status:
                            'Saved',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      _travelVisionCard(),
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

class _NavItem
    extends StatelessWidget {
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
  Widget build(
    BuildContext context,
  ) {
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
