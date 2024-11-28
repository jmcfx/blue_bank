class AccountModel {
  final String title;
  final String subtitle;
  final String? tag;
  final List<String> features;
  final List<ExtraInfoItem> extraInfo;
  final bool hasLearnMoreButton;

  AccountModel({
    required this.title,
    required this.subtitle,
    this.tag,
    required this.features,
    required this.extraInfo,
    this.hasLearnMoreButton = false,
  });
}

// list of Account objects
final List<AccountModel> accountData = [
  AccountModel(
    title: "Bluebank Life",
    subtitle:
        "Bluebank Life could help you reach your\nsavings goals sooner by earning bonus\ninterest every month you save.",
    tag: "What you get",
    features: [
      "Earn up to 4.50% variable interest",
      "\$0 Account keeping fee",
      "18+ Minimum age to open account"
    ],
    extraInfo: [
      ExtraInfoItem(text: "Split your savings into up to 6 different\nsavings goals"),
     ExtraInfoItem(text:  "Boost your savings with bonus interest\neach month you grow your balance"),
      ExtraInfoItem(text: "Unlimited access via a Bluebank Choice\naccount", hasDivider: true)
    ],
    hasLearnMoreButton: false,
  ),
  AccountModel(
    title: "Bluebank Choice",
    subtitle: "An everyday account with a debit card.",
    tag: "What you get",
    features: [
      "\$5 Account keeping fee, unless you’re\nunder 30, a full-time tertiary student or\ndeposit at least \$2,000 each month.",
      "If you are under 14, you can open an\naccount in branch with a parent or\nguardian."
    ],
    extraInfo: [
     ExtraInfoItem(text: "Easy access to your money with a Debit\nMastercard and a range of digital wallets\n(including Apple Pay & Google Pay"),
      ExtraInfoItem(text: "Access to exclusive offers and discounts"),
      ExtraInfoItem(text: "Fraud Money Back Guarantee")
    ],
    hasLearnMoreButton: true,
  ),
];



class ExtraInfoItem {
  final String text;
  final bool hasDivider;

  ExtraInfoItem({required this.text, this.hasDivider = false});
}
