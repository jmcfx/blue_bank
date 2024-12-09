import 'package:blue_bank/src/feature/onboarding/view_models/onboarding_event.dart';
import 'package:blue_bank/src/feature/onboarding/view_models/onboarding_states.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingInitial()) {
    on<OptionSelectedEvent>((event, emit) {

      //state is the Onboarding Selected state ...
      final currentOptions = state is OnboardingSelected
          ? (state as OnboardingSelected).selectedOptions
          : {};

      currentOptions[event.pageIndex] = event.optionIndex;

      emit(OnboardingSelected(Map.from(currentOptions)));

    });
  }
}
