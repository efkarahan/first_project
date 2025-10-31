import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constants/app_colors.dart';
import '../bloc/navigation/navigation_bloc.dart';
import '../bloc/navigation/navigation_event.dart';

/// Chat ekranı - AI Image Editor
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  int photoCount = 0;

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Klavyeyi kapat
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF000000), // Zifiri siyah (üst)
              Color(0xFF000000), // Hala zifiri siyah
              Color(0xFF1C1C1C), // Açılmaya başlıyor
              Color(0xFF252525), // Alt kısımda
            ],
            stops: [0.0, 0.3, 0.6, 0.9],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header
              _buildHeader(),
              
              // Ana içerik
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(flex: 2),
                      
                      // Başlık
                      const Text(
                        'What are you working on?',
                        style: TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      
                      const SizedBox(height: 16),
                      
                      // Açıklama
                      const Text(
                        'Describe the image you want to create or\nupload photos to edit',
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: 15,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      
                      const Spacer(flex: 3),
                      
                      // 0/10 photos ve butonlar
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // 0/10 photos (sol üstte, küçük)
                            Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: Text(
                                '$photoCount/10 photos',
                                style: TextStyle(
                                  color: Color(0xFF9E9E9E),
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            
                            const SizedBox(height: 8),
                            
                            // Butonlar
                            Row(
                              children: [
                                // Add Photo butonu (oval çerçeveli, küçük)
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.textPrimary.withValues(alpha: 0.3),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        size: 13,
                                        color: AppColors.textPrimary,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        'Add Photo ▲',
                                        style: TextStyle(
                                          color: AppColors.textPrimary,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              
                              const Spacer(),
                              
                              // History butonu (dikdörtgenimsi, daha büyük)
                              GestureDetector(
                                onTap: () {
                                  // History ekranına geç
                                  context.read<NavigationBloc>().add(const NavigationTabChanged(2));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFF2A2A2C),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 18,
                                    vertical: 9,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.history,
                                        size: 16,
                                        color: AppColors.textPrimary,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        'History',
                                        style: TextStyle(
                                          color: AppColors.textPrimary,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                        ),
                      ),
                      
                      const SizedBox(height: 16),
                      
                      // Text input (orta boy)
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF2A2A2C),
                          borderRadius: BorderRadius.circular(26),
                        ),
                        child: TextField(
                          controller: _textController,
                          maxLines: null,
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontSize: 14,
                          ),
                          decoration: InputDecoration(
                            hintText: 'How would you like the image to be?',
                            hintStyle: TextStyle(
                              color: AppColors.textSecondary.withValues(alpha: 0.6),
                              fontSize: 14,
                            ),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 21,
                              vertical: 16,
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  // İleride gönder fonksiyonu buraya gelecek
                                },
                                child: Container(
                                  width: 34,
                                  height: 34,
                                  decoration: BoxDecoration(
                                    color: AppColors.textSecondary.withValues(alpha: 0.15),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.arrow_upward,
                                    color: AppColors.textSecondary.withValues(alpha: 0.5),
                                    size: 19,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // AI Image Editor
          const Text(
            'AI Image Editor',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          
          // PRO butonu
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFA855F7), // Mor
                  Color(0xFFFF9500), // Turuncu
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.workspace_premium,
                  color: AppColors.textPrimary,
                  size: 16,
                ),
                const SizedBox(width: 4),
                Text(
                  'PRO',
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

