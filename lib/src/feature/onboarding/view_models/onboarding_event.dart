abstract class OnboardingEvent {}

class OptionSelectedEvent extends OnboardingEvent {
  final int pageIndex;
  final int optionIndex;

  OptionSelectedEvent(this.pageIndex, this.optionIndex);
}
