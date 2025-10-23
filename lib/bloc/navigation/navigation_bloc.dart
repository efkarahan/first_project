import 'package:flutter_bloc/flutter_bloc.dart';
import 'navigation_event.dart';
import 'navigation_state.dart';

/// Alt navigasyon yönetimi için BLoC
class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationState()) {
    // Sekme değişikliği event handler'ı
    on<NavigationTabChanged>(_onTabChanged);
  }

  /// Sekme değiştiğinde çalışan metod
  void _onTabChanged(
    NavigationTabChanged event,
    Emitter<NavigationState> emit,
  ) {
    // Yeni state'i emit et
    emit(state.copyWith(currentIndex: event.tabIndex));
  }
}

