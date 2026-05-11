import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widgets/glass/glass_button.dart';
import '../../../core/widgets/glass/glass_card.dart';
import '../../../core/widgets/glass/scenic_background.dart';

class AssistantScreen extends StatefulWidget {
  const AssistantScreen({super.key});

  @override
  State<AssistantScreen> createState() =>
      _AssistantScreenState();
}

class _AssistantScreenState
    extends State<AssistantScreen> {
  final TextEditingController _controller =
      TextEditingController();

  Widget _heroCard() {
    return GlassCard(
      radius: 34,
      opacity: 0.40,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Text(
            'CIANTIS AI',
            style: TextStyle(
              color: Color(0xFF4B3A2F),
              fontSize: 11,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Your luxury\nlife assistant.',
            style: TextStyle(
              color: Color(0xFF2F241E),
              fontSize: 28,
              fontWeight: FontWeight.w700,
              height: 1.08,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'An intelligent assistant that helps organize your health, finances, goals, routines, beauty, school, family, and entire life.',
            style: TextStyle(
              color: Color(0xFF7B6657),
              fontSize: 14,
              height: 1.45,
            ),
          ),
          const SizedBox(height: 22),
          GlassButton(
            label: 'Start Voice Mode',
            icon: Icons.mic_none_rounded,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _chatBubble({
    required bool isAi,
    required String message,
  }) {
    return Align(
      alignment: isAi
          ? Alignment.centerLeft
          : Alignment.centerRight,
      child: Container(
        margin:
            const EdgeInsets.only(
          bottom: 14,
        ),
        padding:
            const EdgeInsets.all(18),
        constraints:
            const BoxConstraints(
          maxWidth: 320,
        ),
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(28),
          color: isAi
              ? Colors.white
                  .withOpacity(0.28)
              : const Color(
                  0xFF8A6548,
                ).withOpacity(0.34),
          border: Border.all(
            color: Colors.white
                .withOpacity(0.22),
          ),
        ),
        child: Text(
          message,
          style: const TextStyle(
            color: Color(0xFF2F241E),
            fontSize: 14,
            height: 1.45,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _suggestionCard({
    required IconData icon,
    required String title,
  }) {
    return GlassCard(
      radius: 24,
      opacity: 0.34,
      padding:
          const EdgeInsets.all(14),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(
              0xFF6A4429,
            ),
            size: 22,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: Color(
                  0xFF2F241E,
                ),
                fontSize: 13,
                fontWeight:
                    FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _inputArea() {
    return Container(
      padding:
          const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(30),
        color: Colors.white
            .withOpacity(0.26),
        border: Border.all(
          color: Colors.white
              .withOpacity(0.24),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              style: const TextStyle(
                color: Color(
                  0xFF2F241E,
                ),
              ),
              decoration:
                  const InputDecoration(
                hintText:
                    'Ask Ciantis AI anything...',
                hintStyle:
                    TextStyle(
                  color: Color(
                    0xFF7B6657,
                  ),
                ),
                border:
                    InputBorder.none,
              ),
            ),
          ),
          Container(
            width: 48,
            height: 48,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(
                0xFF8A5C34,
              ),
            ),
            child: const Icon(
              Icons.arrow_upward,
              color: Colors.white,
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
                Icons.auto_awesome,
            label: 'assistant',
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
                          'Ciantis AI',
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
                        Icons
                            .auto_awesome,
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
                        'Luxury AI\nassistant.',
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
                        'Your intelligent life operating system.',
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
                        height: 20,
                      ),
                      _chatBubble(
                        isAi: true,
                        message:
                            'Good morning. You slept 6 hours last night and have 3 upcoming appointments today.',
                      ),
                      _chatBubble(
                        isAi: false,
                        message:
                            'Help me reset my routines and organize my finances.',
                      ),
                      _chatBubble(
                        isAi: true,
                        message:
                            'I can help build a recovery routine, organize debt, and create a realistic savings strategy.',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      _suggestionCard(
                        icon:
                            Icons.favorite_outline,
                        title:
                            'Create wellness reset routine',
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      _suggestionCard(
                        icon:
                            Icons.payments_outlined,
                        title:
                            'Analyze debt and spending',
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      _suggestionCard(
                        icon:
                            Icons.calendar_month,
                        title:
                            'Plan tomorrow perfectly',
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      _inputArea(),
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
