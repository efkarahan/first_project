import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constants/app_colors.dart';
import '../bloc/navigation/navigation_bloc.dart';
import '../bloc/navigation/navigation_event.dart';
import '../bloc/navigation/navigation_state.dart';

/// Alt navigasyon çubuğu
class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return Container(
          decoration: const BoxDecoration(
            color: AppColors.cardBackground,
            border: Border(
              top: BorderSide(
                color: AppColors.divider,
                width: 0.5,
              ),
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildNavItem(
                    context: context,
                    icon: Icons.home_outlined,
                    label: 'Home',
                    index: 0,
                    isActive: state.currentIndex == 0,
                  ),
                  _buildNavItem(
                    context: context,
                    icon: Icons.chat_bubble_rounded,
                    label: 'Chat',
                    index: 1,
                    isActive: state.currentIndex == 1,
                  ),
                  _buildNavItem(
                    context: context,
                    icon: Icons.history_rounded,
                    label: 'History',
                    index: 2,
                    isActive: state.currentIndex == 2,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildNavItem({
    required BuildContext context,
    required IconData icon,
    required String label,
    required int index,
    required bool isActive,
  }) {
    return GestureDetector(
      onTap: () {
        // BLoC'a event gönder
        context.read<NavigationBloc>().add(NavigationTabChanged(index));
      },
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isActive ? AppColors.accent : AppColors.textSecondary,
            size: 28,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isActive ? AppColors.accent : AppColors.textSecondary,
              fontSize: 12,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

