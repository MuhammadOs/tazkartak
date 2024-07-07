class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Easy payment method",
    image: "assets/images/image1.png",
    desc: "Safe and easy way to pay you don't have to go back if you forget your walletッ.",
  ),
  OnboardingContents(
    title: "Don't waste time standing in line",
    image: "assets/images/image2.png",
    desc:
    "book your ticket right now from where you are .",
  ),
  OnboardingContents(
    title: "Pick your seat on your own phone",
    image: "assets/images/image3.png",
    desc:
    "you don't have to rush take your time, sit where you feel comfortable.",
  ),
  OnboardingContents(
    title: "Almost Done",
    image: "assets/images/image4.png",
    desc: "You are one step away from enjoying your best experience ever.",
  ),
];
