import 'package:equatable/equatable.dart';

/// Navigation state'i
class NavigationState extends Equatable {
  final int currentIndex;

  const NavigationState({
    this.currentIndex = 0,
  });

  /// State'i kopyalama metodu
  NavigationState copyWith({
    int? currentIndex,
  }) {
    return NavigationState(
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }

  @override
  List<Object> get props => [currentIndex];
}

