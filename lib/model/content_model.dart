class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Step 1: Combine Dry Ingredients',
    image: 'assets/1.png',
    discription: "Combine dry ingredients in a bowl. (Flour, Baking Powder, Salt, Sugar)\n Mix them together using a whisk"
  ),
  UnbordingContent(
    title: 'Step 2: Mix Milk, Butter, And Egg',
    image: 'assets/2.png',
    discription: "In a large bowl, add an egg and melted butter and whisk.\nThen add milk and stir in between each one, so its all nice and mixed together"
  ),
  UnbordingContent(
    title: 'Step 3: Add Mixture',
    image: 'assets/3.png',
    discription: "Add Flour mixture a little bit at a time\nThis method helps keep the lumps from forming in the batter"
  ),
  UnbordingContent(
    title: 'Step 4: Cook Those Pancakes',
    image: 'assets/4.png',
    discription: "Spray the preheat skillet with kitchen spray and heat it up for about 5 minutes\nScoop up some batter and pour it onto the skillet. If the batter is too thick, add a bit of milk to thin it out.\nLet the batter cook for about 30 to 45 seconds."
  ),
  UnbordingContent(
    title: 'Step 5: Cook Those Pancakes',
    image: 'assets/5.png',
    discription: "If the batter start to form little bubbles and rise a little, use the spatula to check uder it to see how brown the pancake is.\nWhen you have a nice brown color, flip the pancake to the other side.\nCheck it after 20 seconds. Now the pancake is done!"
  ),
];