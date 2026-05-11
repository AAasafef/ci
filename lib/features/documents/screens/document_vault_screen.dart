import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widgets/glass/glass_button.dart';
import '../../../core/widgets/glass/glass_card.dart';
import '../../../core/widgets/glass/scenic_background.dart';

class DocumentVaultScreen extends StatefulWidget {
  const DocumentVaultScreen({super.key});

  @override
  State<DocumentVaultScreen> createState() =>
      _DocumentVaultScreenState();
}

class _DocumentVaultScreenState
    extends State<DocumentVaultScreen> {
  Widget _heroCard() {
    return GlassCard(
      radius: 34,
      opacity: 0.40,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Text(
            'DOCUMENT VAULT',
            style: TextStyle(
              color: Color(0xFF4B3A2F),
              fontSize: 11,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Your private\nluxury archive.',
            style: TextStyle(
              color: Color(0xFF2F241E),
              fontSize: 28,
              fontWeight: FontWeight.w700,
              height: 1.08,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Securely organize personal documents, legal paperwork, warranties, IDs, school files, receipts, and important records.',
            style: TextStyle(
              color: Color(0xFF7B6657),
              fontSize: 14,
              height: 1.45,
            ),
          ),
          const SizedBox(height: 22),
          GlassButton(
            label: 'Scan Document',
            icon: Icons.document_scanner_outlined,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _folderCard({
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
                'files',
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

  Widget _securityCard() {
    return GlassCard(
      radius: 32,
      opacity: 0.44,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Text(
            'Biometric Security',
            style: TextStyle(
              color: Color(0xFF2F241E),
              fontSize: 22,
              fontWeight:
                  FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Protect sensitive documents with fingerprint, Face ID, PIN protection, and encrypted storage.',
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
                  Icons.shield_outlined,
                  color:
                      Color(0xFF6A4429),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Your vault is securely encrypted and protected.',
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

  Widget _scannerInsightCard() {
    return GlassCard(
      radius: 32,
      opacity: 0.44,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Text(
            'Smart AI Scanner',
            style: TextStyle(
              color: Color(0xFF2F241E),
              fontSize: 22,
              fontWeight:
                  FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Your app can eventually detect and categorize receipts, legal paperwork, medical files, warranties, tax forms, and more.',
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
                    '“Possible match: Vehicle warranty document.”',
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
                Icons.folder_copy_outlined,
            label: 'vault',
            active: true,
            onTap: () {},
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
            icon:
                Icons.auto_awesome,
            label: 'assistant',
            onTap: () {
              context.go('/assistant');
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
                          'Document Vault',
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
                        Icons.lock_outline,
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
                        'Private\nvault.',
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
                        'Luxury document organization.',
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
                      _folderCard(
                        title:
                            'Legal Documents',
                        subtitle:
                            'Court records, agreements, contracts, and legal paperwork.',
                        icon:
                            Icons.gavel_outlined,
                        count:
                            '24',
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _folderCard(
                        title:
                            'Medical Records',
                        subtitle:
                            'Health documents, insurance, prescriptions, and labs.',
                        icon:
                            Icons.medical_services_outlined,
                        count:
                            '38',
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _folderCard(
                        title:
                            'Receipts & Warranties',
                        subtitle:
                            'Purchase records, receipts, serial numbers, and warranties.',
                        icon:
                            Icons.receipt_long_outlined,
                        count:
                            '82',
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _folderCard(
                        title:
                            'School & Certifications',
                        subtitle:
                            'Degrees, CNA license, transcripts, and certifications.',
                        icon:
                            Icons.school_outlined,
                        count:
                            '18',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      _securityCard(),
                      const SizedBox(
                        height: 20,
                      ),
                      _scannerInsightCard(),
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
