class AccountModel {
  final String title;
  final String subtitle;
  final String? tag;
  final List<String> features;
  final List<String>? extraInfo;
  final bool hasLearnMoreButton;

  AccountModel({
    required this.title,
    required this.subtitle,
    this.tag,
    required this.features,
    this.extraInfo,
    this.hasLearnMoreButton = false,
  });
}



  // list of Account objects
  final List<AccountModel> accountData = [
    AccountModel(
      title: "Bluebank Life",
      subtitle:
          "Bluebank Life could help you reach your\nsavings goals sooner by earning bonus\ninterest every month you save.",
      tag: "Bundled accounts",
      features: [
        "Earn up to 4.50% variable interest",
        "\$0 Account keeping fee",
        "18+ Minimum age to open account"
      ],
      extraInfo: [
        "Split your savings into up to 6 different savings goals",
        "Boost your savings with bonus interest each month you grow your balance",
        "Unlimited access via a Bluebank Choice account"
      ],
      hasLearnMoreButton: false,
    ),
    AccountModel(
      title: "Bluebank Choice",
      subtitle: "An everyday account with a debit card.",
      features: [
        "\$5 Account keeping fee, unless you’re under 30, a full-time tertiary student or deposit at least \$2,000 each month",
        "If you are under 14, you can open an account in branch with a parent or guardian"
      ],
      extraInfo: [
        "Easy access to your money with a Debit Mastercard and a range of digital wallets (including Apple Pay & Google Pay)",
        "Access to exclusive offers and discounts",
        "Fraud Money Back Guarantee"
      ],
      hasLearnMoreButton: true,
    ),
  ];