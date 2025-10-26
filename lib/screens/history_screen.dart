import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constants/app_colors.dart';
import '../bloc/navigation/navigation_bloc.dart';
import '../bloc/navigation/navigation_event.dart';

/// History ekranı
class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header - Geri butonu ve başlık
              Row(
                children: [
                  // Geri butonu (sadece ok)
                  GestureDetector(
                    onTap: () {
                      // Chat Screen'e geç (tab 1)
                      context.read<NavigationBloc>().add(const NavigationTabChanged(1));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                  
                  const SizedBox(width: 8),
                  
                  // Başlık ve alt başlık
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'History',
                        style: TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Your previous creations',
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              
              const SizedBox(height: 32),
              
              // Buraya card'lar gelecek (şimdilik boş)
            ],
            ),
          ),
        ),
      ),
    );
  }
}

