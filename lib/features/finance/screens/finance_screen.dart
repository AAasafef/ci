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
  final List<DebtItem> debts = [
    DebtItem(
      title: 'Capital One',
      balance: '\$3,842',
      status: 'Credit Card',
      dueDate: 'Due May 24',
    ),
    DebtItem(
      title: 'Student Loan',
      balance: '\$12,400',
      status: 'Federal',
      dueDate: 'Due June 2',
    ),
    DebtItem(
      title: 'Collections',
      balance: '\$680',
      status: 'Medical',
      dueDate: 'In Collections',
    ),
  ];

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
            'Your financial\ncontrol center.',
            style: TextStyle(
              color: Color(0xFF2F241E),
              fontSize: 28,
              fontWeight: FontWeight.w700,
              height: 1.08,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Track debt, credit, budgeting, income, collections, and financial goals beautifully.',
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

  Widget _debtCard(DebtItem debt) {
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
              color: const Color(
                0xFF8A6548,
              ).withOpacity(0.16),
            ),
            child: const Icon(
              Icons.account_balance_wallet,
              color: Color(0xFF6A4429),
              size: 28,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  debt.title,
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
                  debt.status,
                  style: const TextStyle(
                    color:
                        Color(0xFF7B6657),
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  debt.dueDate,
                  style: const TextStyle(
                    color:
                        Color(0xFF7B6657),
                    fontSize: 11,
                    fontWeight:
                        FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment:
                CrossAxisAlignment.end,
            children: [
              Text(
                debt.balance,
                style: const TextStyle(
                  color: Color(0xFF6A4429),
                  fontSize: 22,
                  fontWeight:
                      FontWeight.w900,
                ),
              ),
              const SizedBox(height: 8),
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

  Widget _insightCard({
    required String title,
    required String subtitle,
  }) {
    return GlassCard(
      radius: 30,
      opacity: 0.42,
      child: Row(
        children: [
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(
                0xFF8A6548,
              ).withOpacity(0.16),
            ),
            child: const Icon(
              Icons.auto_awesome,
              color: Color(0xFF6A4429),
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
                    fontSize: 16,
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
            icon:
                Icons.account_balance_wallet,
            label: 'finance',
            active: true,
            onTap: () {},
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
                          'Finance',
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
                            .account_balance_wallet,
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
                        'Debt &\nfinances.',
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
                        'Financial clarity without overwhelm.',
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
                                'Debt',
                            value:
                                '\$16k',
                            icon: Icons
                                .account_balance_wallet_outlined,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          _overviewCard(
                            label:
                                'Accounts',
                            value: '6',
                            icon: Icons
                                .credit_card_outlined,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          _overviewCard(
                            label:
                                'Score',
                            value:
                                '642',
                            icon: Icons
                                .analytics_outlined,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ...debts.map(
                        (debt) {
                          return Padding(
                            padding:
                                const EdgeInsets.only(
                              bottom: 14,
                            ),
                            child:
                                _debtCard(
                              debt,
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      _insightCard(
                        title:
                            'AI Insight',
                        subtitle:
                            'Paying off the \$680 medical collection first may improve your utilization and reduce collection pressure.',
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _insightCard(
                        title:
                            'Smart Recommendation',
                        subtitle:
                            'Your app will eventually simulate payoff strategies, disputes, settlement estimates, and timeline projections.',
                      ),
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

class DebtItem {
  final String title;
  final String balance;
  final String status;
  final String dueDate;

  DebtItem({
    required this.title,
    required this.balance,
    required this.status,
    required this.dueDate,
  });
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
