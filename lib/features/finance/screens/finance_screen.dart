import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widgets/glass/glass_button.dart';
import '../../../core/widgets/glass/glass_card.dart';
import '../../../core/widgets/glass/scenic_background.dart';

class FinanceScreen extends StatefulWidget {
  const FinanceScreen({super.key});

  @override
  State<FinanceScreen> createState() =>
      _FinanceScreenState();
}

class _FinanceScreenState
    extends State<FinanceScreen> {
  Widget _heroCard() {
    return GlassCard(
      radius: 34,
      opacity: 0.40,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Text(
            'FINANCE',
            style: TextStyle(
              color: Color(0xFF4B3A2F),
              fontSize: 11,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Luxury money\nmanagement.',
            style: TextStyle(
              color: Color(0xFF2F241E),
              fontSize: 28,
              fontWeight: FontWeight.w700,
              height: 1.08,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Track bills, debt, subscriptions, savings, goals, income, spending, and future financial growth.',
            style: TextStyle(
              color: Color(0xFF7B6657),
              fontSize: 14,
              height: 1.45,
            ),
          ),
          const SizedBox(height: 22),
          GlassButton(
            label: 'Upload Credit Report',
            icon: Icons.upload_file,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _moneyCard({
    required String title,
    required String subtitle,
    required String amount,
    required IconData icon,
  }) {
    return GlassCard(
      radius: 30,
      opacity: 0.42,
      child: Row(
        children: [
          Container(
            width: 68,
            height: 68,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(22),
              gradient:
                  const LinearGradient(
                begin: Alignment.topLeft,
                end:
                    Alignment.bottomRight,
                colors: [
                  Color(0xFF9A765C),
                  Color(0xFF6A4B38),
                ],
              ),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 32,
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
                amount,
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

  Widget _creditInsightCard() {
    return GlassCard(
      radius: 32,
      opacity: 0.44,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Text(
            'AI Financial Insights',
            style: TextStyle(
              color: Color(0xFF2F241E),
              fontSize: 22,
              fontWeight:
                  FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Your app will eventually analyze debt, suggest payoff strategies, estimate credit impact, and help improve financial habits.',
            style: TextStyle(
              color: Color(0xFF7B6657),
              fontSize: 13,
              height: 1.45,
            ),
          ),
          const SizedBox(height: 18),
          Container(
            padding:
                const EdgeInsets.all(
              18,
            ),
            decoration:
                BoxDecoration(
              borderRadius:
                  BorderRadius.circular(
                24,
              ),
              color: Colors.white
                  .withOpacity(
                0.24,
              ),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.auto_awesome,
                  color:
                      Color(0xFF6A4429),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    '“Paying \$120 more monthly could reduce payoff time by 18 months.”',
                    style: TextStyle(
                      color: Color(
                          0xFF2F241E),
                      fontSize: 13,
                      fontWeight:
                          FontWeight
                              .w700,
                    ),
                  ),
                ),
              ],
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
                Icons.account_balance_wallet_outlined,
            label: 'finance',
            active: true,
            onTap: () {},
          ),
          _NavItem(
            icon:
                Icons.auto_awesome,
            label: 'assistant',
            onTap: () {
              context.go('/assistant');
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
  Widget build(
    BuildContext context,
  ) {
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
                          'Finance',
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
                            .account_balance_wallet,
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
                        'Money &\nwealth.',
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
                        'Luxury financial organization.',
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
                                'Savings',
                            value:
                                '\$4.2k',
                            icon:
                                Icons.savings_outlined,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          _overviewCard(
                            label:
                                'Bills',
                            value:
                                '12',
                            icon:
                                Icons.receipt_long_outlined,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          _overviewCard(
                            label:
                                'Debt',
                            value:
                                '\$18k',
                            icon:
                                Icons.credit_card_outlined,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      _moneyCard(
                        title:
                            'Monthly Bills',
                        subtitle:
                            'Track recurring expenses, due dates, and reminders.',
                        amount:
                            '\$2.1k',
                        icon:
                            Icons.calendar_month,
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _moneyCard(
                        title:
                            'Debt Payoff',
                        subtitle:
                            'Credit cards, collections, loans, and payment plans.',
                        amount:
                            '\$18k',
                        icon:
                            Icons.trending_down,
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _moneyCard(
                        title:
                            'Savings Goals',
                        subtitle:
                            'Emergency fund, luxury purchases, and future planning.',
                        amount:
                            '\$4.2k',
                        icon:
                            Icons.savings,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      _creditInsightCard(),
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
                    0xFF6A4429),
                : const Color(
                    0xFF8E7868),
            size: 22,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: active
                  ? const Color(
                      0xFF6A4429)
                  : const Color(
                      0xFF8E7868),
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
