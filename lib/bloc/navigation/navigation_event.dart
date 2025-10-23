import 'package:equatable/equatable.dart';

/// Navigation event'leri
abstract class NavigationEvent extends Equatable {
  const NavigationEvent();

  @override
  List<Object> get props => [];
}

/// Sekme değiştirme event'i
class NavigationTabChanged extends NavigationEvent {
  final int tabIndex;

  const NavigationTabChanged(this.tabIndex);

  @override
  List<Object> get props => [tabIndex];
}

