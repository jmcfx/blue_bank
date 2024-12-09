// State
abstract class OnboardingState {}

class OnboardingInitial extends OnboardingState {}

class OnboardingSelected extends OnboardingState {
  final Map<int, int> selectedOptions;

  OnboardingSelected(this.selectedOptions);
}
