class OnboardingPageDataModel {
  final String title;
  final String subTitle;
  final String question;
  final List<Map<String, String>>
      options; // List of maps to hold both option and subtitle

  OnboardingPageDataModel({
    required this.title,
    required this.subTitle,
    required this.question,
    required this.options,
  });
}


final List<OnboardingPageDataModel> pagesDataList = [
  OnboardingPageDataModel(
    question: "i'm looking for a",
    title: "Choose a bank account",
    subTitle: "Tell us what you're looking for in a bank account.",
    options: [
      {"title": "Single account", "subtitle": ""},
      {"title": "Joint account", "subtitle": ""},
    ],
  ),

  OnboardingPageDataModel(
    question: "i'm looking for a",
    title: "What is your age?",
    subTitle:
        "If you are opening an account for a child, please select their age.",

    options: [
      {"title": "Under 14", "subtitle": ""},
      {"title": "14-17", "subtitle": ""},
      {"title": "18-29", "subtitle": ""},
      {"title": "30-54", "subtitle": ""},
      {"title": "55 or over", "subtitle": ""},
    ],
  ),
  OnboardingPageDataModel(
    question: "What type of account do you need?",
    title: "Account type",
    subTitle: "Select the type of account you need.",
    options: [
      {
        "title": "Savings",
        "subtitle": "Earning interest on your account balance"
      },
      {
        "title": "Everyday transactions",
        "subtitle": "Depositing funds into everyday use with a debit card"
      },
      {
        "title": "Everyday transactions and savings",
        "subtitle":
            "Everyday use with debit card access for earning interest on savings"
      },
    ],
  ),
  OnboardingPageDataModel(
    question: "What kind of savings account do you need?",
    title: "Savings type",
    subTitle: "What kind of savings account do you need?",
    options: [
      {"title": "A short-term or regular savings account", "subtitle": ""},
      {
        "title": "Something fixed with a guaranteed rate of return",
        "subtitle": ""
      },
    ],
  ),
];
