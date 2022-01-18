//
//  RecipeModel.swift
//  RecipeSaver
//
//  Created by rido alpredo on 18/01/22.
//

import Foundation

//ini untuk category,, biar saat di select category, akan muncul sesuai dengan categoty nya
enum Category: String {
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Desert"
    case snack = "Snack"
    case drink = "Drink"
}
//ini model nya,,,
struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let direction: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all : [Recipe] = [
    Recipe(name: "Creamy Carrot Soup",
           image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98892/Creamy-Carrot-Soup-for-Wordpress-360x270-c.jpg",
           description: "This bold-hued soup is perfectly sweet and seriously comforting. Peeling the red bell pepper helps make this carrot soup extra silky. Dress it up with a drizzle of rich cashew cream, pomegranate seeds, and chopped fresh parsley for a festive fall presentation. ", ingredients: "¼ cup cashews 1 medium onion, cut into ½-inch dice (2 cups) 1½ pounds carrots, cut into ½-inch dice (3½ cups) 1 red bell pepper, peeled and cut into ½-inch dice (1 cup) 1 sprig fresh rosemary 1 sprig fresh thyme 1 large fresh sage leaf 4 cloves garlic, minced 1 tablespoon lemon juice Sea salt and freshly ground black pepper or cayenne pepper, to taste ½ cup fresh pomegranate seeds 2 tablespoons finely chopped fresh parsley",
           direction: "In a small bowl, cover the cashews with ½ cup hot water; let soak 20 minutes. Transfer cashews and remaining liquid to a blender; blend until smooth and creamy. Set aside. In a saucepan, combine onion, carrots, bell pepper, rosemary, thyme, sage, and garlic. Add ½ cup water and sauté over medium heat for 15 to 20 minutes, or until carrots are tender. Remove pan from heat. Let vegetables cool for 10 minutes; then remove rosemary sprigs and thyme leaf. Transfer sauteed vegetables to a blender, and puree to a smooth paste. Return pureed vegetables to saucepan and add 3 cups water and 1 tablespoon lemon juice. Season with salt and pepper. Bring soup to boiling. To serve, place soup in individual bowls, drizzle with cashew cream, and garnish with pomegranate seeds and parsley.",
           category: "Soup",
           datePublished: "Nov 11, 2019",
           url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot-soup/"),
    Recipe(name: "Kale, Apple, and Quinoa Salad",
           image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98341/Kale-Apple-Quinoa-Salad-wordpress-360x270-c.jpg",
           description: "Each bite of this colorful salad is filled with the flavors of favorite fall ingredients such as apples, butternut squash, and pumpkin seeds. For optimum freshness and texture, wait to add the dressing until just before serving. Note that this recipe calls for cooked quinoa, so have that ready to go: For 1½ cups cooked quinoa, rinse and drain ½ cup quinoa; cook according to package directions; and drain if needed. Check out our Grains Cooking Guide for more tips on prepping grains like a pro.",
           ingredients: "2 cups ¾-inch pieces peeled butternut squash ¼ cup pumpkin seeds ¼ teaspoon ground cinnamon 1 lemon 2 tablespoons pure maple syrup 1 tablespoon Dijon mustard 3 cups stemmed and chopped kale 1½ cups cooked quinoa 1 cup chopped apple ½ cup sliced green onions Sea salt and freshly ground black pepper, to taste",
           direction: "Preheat oven to 400°F. Line a 15×10-inch baking pan with parchment paper or a silicone baking mat. Arrange squash in the prepared baking pan. Roast 20 to 25 minutes or until squash is tender, brushing lightly with water if squash starts to look dry. Cool slightly on a wire rack. Meanwhile, in a small bowl toss together pumpkin seeds and ½ teaspoon water; sprinkle with cinnamon. Place pumpkin seeds in a small, shallow baking pan. Roast 5 minutes or until lightly toasted; cool. For dressing, remove 1 teaspoon zest and squeeze 2 tablespoons juice from lemon. In a small bowl whisk together lemon zest and juice, maple syrup, and mustard. In a large bowl combine kale, quinoa, apple, green onions, and roasted squash. Add dressing; toss to coat. Season with salt and pepper. Top with pumpkin seeds.",
           category: "Salad",
           datePublished: "Oct 22, 2019",
           url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/kale-apple-and-quinoa-salad/"),
    Recipe(name: "Savory Meatballs with Cranberry Glaze",
           image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/159631/Hearty-Red-Bean-Chili-wordpress-360x270-c.jpg",
           description: "Looking for a crowd-pleasing appetizer for your next gathering? These vegan, plant-forward skewers featuring meatballs and orange slices are sure to do the trick. Present them on a platter with a tangy glaze for spooning or dipping. Note that this recipe calls for cooked brown rice, so be sure to have that ready to go",
           ingredients: "2 cups chopped fresh mushrooms ½ cup chopped onion 2 cloves garlic, minced ½ teaspoon dried marjoram or summer savory, crushed ½ teaspoon dried sage, crushed ½ teaspoon dried thyme, crushed Sea salt and freshly ground black pepper, to taste 1 15-oz. can no-salt-added garbanzo beans (chickpeas), drained (reserve liquid) and rinsed 1 cup cooked brown rice, cooled ½ cup whole wheat panko bread crumbs 5 orange slices, quartered CRANBERRY GLAZE 2 cups fresh or frozen cranberries ½ cup orange juice ⅓ cup packed brown sugar 2 tablespoons pure maple syrup ½ teaspoon dry mustard",
           direction: "To make Cranberry Glaze, in a saucepan combine all Cranberry Glaze ingredients and ¼ cup water. Cook over medium about 10 minutes or until berries burst, stirring occasionally. Transfer mixture to a blender or food processor. Cover and pulse until nearly smooth. If needed, thin with additional orange juice. Transfer to a serving dish. Preheat broiler. In a large nonstick skillet cook mushrooms, onion, and garlic over medium 5 minutes or until tender, stirring occasionally and adding water, 1 to 2 Tbsp. at a time, as needed to prevent sticking. Stir in marjoram, sage, thyme, salt, and pepper. In a food processor combine mushroom mixture, chickpeas, rice, and panko. Pulse until very finely ground but not smooth. Add 1 to 2 Tbsp. reserved chickpea liquid (aquafaba) if needed to moisten mixture. Let mixture stand 10 minutes. Form mixture into forty 1-inch balls. Arrange balls on a large baking sheet. Broil meatballs 4 to 6 inches from the heat about 10 minutes or until lightly browned and set, turning once. Thread 2 meatballs and an orange piece on each of 20 short skewers or long toothpicks. Place on a platter with Cranberry Glaze on the side. To transport, cover platter and place in an insulated carrier with a hot pack.",
           category: "Appetizer",
           datePublished: "Dec 9, 2019",
           url:"https://www.forksoverknives.com/recipes/vegan-snacks-appetizers/savory-vegan-meatballs-with-cranberry-glaze/"),
    Recipe(
        name: "Mushroom Stroganoff with Wheatballs",
        image:"https://www.forksoverknives.com/wp-content/uploads/fly-images/158793/Mushroom-Stroganoff-with-Wheatballs-wordpress-360x270-c.jpg",
        description: "This comforting dish has it all—a savory umami-rich gravy, tender veggie wheatballs, and satisfying whole wheat pasta to soak up all the delicious flavors. Mushrooms are the star of this recipe and make appearances in both the gravy and wheatballs, so make sure to get the freshest you can find. And when it comes to the pasta, any shape will work, but the gravy clings the best to curly varieties such as fusilli. Sprinkle everything with fresh herbs, and enjoy! Tip: The hearty wheatballs freeze well; make them up to 2 weeks in advance and freeze in airtight containers.",
        ingredients: "1¼ lb. fresh mushrooms 3 cups chopped onion 1 15-oz. can white beans (any variety), rinsed and drained (1½ cups) 1 cup whole wheat bread crumbs 1 cup cooked quinoa ½ cup + 1 tablespoon chopped fresh parsley 2 tablespoons finely chopped fresh sage 2 tablespoons finely chopped fresh thyme 1 tablespoon flaxseed meal 12 cloves garlic, minced 4½ teaspoons white wine vinegar ½ teaspoon baking soda ¼ teaspoon sea salt ⅛ teaspoon freshly ground black pepper 4 cups dry whole wheat pasta, such as farfalle or fusilli 2 cups fresh or frozen spinach 2 cups unsweetened, unflavored plant-based milk 2 tablespoons oat flour",
        direction: "Preheat oven to 450°F. Line a baking sheet with parchment paper. Roughly chop 8 oz. of the mushrooms; set remaining 12 oz. mushrooms aside for gravy. In a food processor combine the chopped mushrooms and 1 cup of the onion. Pulse to a chunky texture. Add white beans, bread crumbs, quinoa, ½ cup fresh parsley, 1 tablespoon fresh sage, 1 tablespoon fresh thyme, the flaxseed, 6 cloves garlic, 1½ teaspoons white wine vinegar, baking soda, the sea salt, and black pepper. Pulse to a coarse texture. Roll about 2 tablespoons of the mushroom mixture into a ball and place on prepared baking sheet. Repeat with the remaining mixture. Bake 30 to 35 minutes or until wheatballs are browned and crispy. For Mushroom Gravy, slice the remaining mushrooms. Transfer to a saucepan. Add the remaining 2 cups chopped onions, 6 cloves garlic, 1 tablespoon fresh sage, and 1 tablespoon fresh thyme. Cook over medium-low about 10 minutes or until all liquid has been cooked off and mushrooms start to brown. Remove ½ cup of the mushrooms from pan; set aside. To the saucepan add the plant-based milk, oat flour, and the remaining 3 teaspoons white wine vinegar. Transfer to a blender; cover and blend until smooth. Return sauce to saucepan; cook about 4 minutes more or until thickened. Stir in the reserved mushrooms. Cook pasta according to package directions, adding spinach the last minute of cooking; drain. Transfer pasta mixture to a large serving dish. Arrange wheatballs on pasta. Spoon Mushroom Gravy over top. Sprinkle with chopped parsley.",
        category: "Main",
        datePublished: "Oct 27, 2021",
        url: "https://www.forksoverknives.com/recipes/vegan-baked-stuffed/mushroom-stroganoff-with-wheatballs/"),
    Recipe(
        name: "Roasted Root Vegetable Medley",
        image:"https://www.forksoverknives.com/wp-content/uploads/fly-images/158614/Roasted-Root-Vegetable-Medley-wordpress-360x270-c.jpg",
        description: "This simple side dish celebrates root vegetables in all their colorful, flavorful glory. The key to evenly roasting firmer veggies, such as carrots and potatoes, without adding fat is to steam them first before mixing them with the soft vegetables. Serve this vibrant recipe at your Thanksgiving feast, or enjoy it as a side with a warm bowl of soup.",
        ingredients: "4 assorted-color carrots, peeled and cut into 3-inch pieces 6 fingerling potatoes, halved if large 2 small parsnips, peeled, halved crosswise, and quartered lengthwise 1 turnip, peeled and cut into sixths 1 rutabaga, peeled and cut into thick wedges 1 medium beet, peeled and cut into 1-inch wedges 3 tablespoons balsamic vinegar 2 tablespoons lemon juice 2 tablespoons pure maple syrup 2 tablespoons arrowroot powder 1 teaspoon dried rosemary 10 cloves garlic, minced 1 fennel bulb, fronds reserved for garnish and bulb cut into 1-inch-thick wedges 1 cup pearl onions or 2 small yellow onions cut into 1-inch-thick wedges 1 small head celeriac, peeled and cut into large wedges 6 large white or cremini mushrooms, quartered ¼ teaspoon sea salt ¼ teaspoon freshly ground black pepper",
        direction: "Preheat oven to 375°F. Working in batches if necessary, place the first six ingredients (through beet) in a steamer basket in a large saucepan. Add water to saucepan to just below basket. Bring to boiling. Steam, covered, 5 to 7 minutes or until vegetables are just tender. In a large bowl whisk together the next six ingredients (through garlic). Add steamed vegetables, fennel, onions, celeriac, and mushrooms. Toss to coat. In a large rimmed baking sheet spread vegetables in a single layer. Roast 15 minutes. Remove from oven and carefully stir. Roast 10 to 15 minutes more or until vegetables are tender and lightly browned. Season with salt and pepper. Sprinkle with chopped reserved fennel fronds. Serve warm.",
        category: "Side",
        datePublished: "Oct 5, 2021",
        url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/roasted-root-vegetable-medley/"),
    Recipe(
        name: "Fall Fruit Trifle with Pumpkin Gingerbread",
        image:"https://www.forksoverknives.com/wp-content/uploads/fly-images/158688/Fall-Fruit-Trifle-with-Pumpkin-Gingerbread-wordpress-360x270-c.jpg",
        description: "This is the ultimate showpiece dessert for your holiday table. Decadent layers of spicy homemade gingerbread, sweet roasted fruit, and silky vanilla cream bring together all the best warming flavors for the chilly winter months. Assemble it in a glass dish to see each beautiful layer before serving—it’s as much a feast for your eyes as it is for your belly!",
        ingredients: "4 Medjool dates, pitted 1 15-oz. can pumpkin ¾ cup unsweetened, unflavored plant-based milk ¼ cup blackstrap molasses 2 tablespoons flaxseed meal 2 cups white whole wheat flour 2 teaspoons pumpkin pie spice 2 teaspoons regular or sodium-free baking powder 1¼ teaspoons sea salt 3 pears or quince, cored and sliced 3 apples or persimmons, cored and sliced 3 oranges, peeled and sliced 6 fresh or dried figs, quartered ¼ cup apple cider ¼ cup pure maple syrup 1 teaspoon grated fresh ginger ½ teaspoon ground cinnamon 2 star anise ½ cup pomegranate seeds ½ cup aquafaba (liquid from canned no-salt-added chickpeas) 2 tablespoons pure cane sugar 2 teaspoons pure vanilla extract ⅓ cup vanilla-flavored vegan yogurt ¼ cup chopped toasted pecans",
        direction: "For gingerbread, preheat oven to 350°F. Line an 8-inch square baking pan with parchment paper or use a silicone baking pan. Place dates in a small bowl. Add boiling water to cover; let stand 10 minutes. Drain well. In a food processor or blender combine soaked dates and the next four ingredients (through flaxseed meal). Process until smooth. Let rest 5 minutes. In a large bowl combine the white whole wheat flour, pumpkin pie spice, baking powder, and 1 teaspoon sea salt. Add pumpkin mixture to flour mixture and stir just until moistened. Pour into the prepared pan, spreading evenly. Bake 30 to 40 minutes or until a toothpick inserted in center comes out clean. Cool completely in pan on a wire rack. Cut gingerbread into 1-inch cubes. Transfer to an airtight container; let stand overnight. For Roasted Fall Fruit, preheat oven to 400°F. Line two 15x10-inch baking pans with parchment paper or silicone baking mats. In a large bowl combine pears or quince, apples or persimmons, oranges, and figs. In a small bowl stir together apple cider, pure maple syrup, grated fresh ginger, ground cinnamon, star anise, and ¼ teaspoon sea salt. Add to fruit; toss to coat. Divide fruit between prepared pans. Roast 30 minutes or until fruit is just tender and lightly browned at edges. Let cool; remove star anise. Fruit can be made 24 hours ahead and refrigerated until ready to eat. For Vanilla Yogurt Cream, combine aquafaba, pure cane sugar, and pure vanilla extract in a large bowl. Beat with a mixer on medium to high until foamy. Beat on high until stiff peaks form (tips stand straight). Gently fold in vanilla-flavor vegan yogurt. Chill up to 3 hours or until ready to use. Yogurt cream can hold up to 6 hours, but you will need to beat again to form soft peaks (tips curl) before serving. To assemble trifle, place one-third of the Roasted Fall Fruit and pomegranate seeds in a large trifle dish or glass bowl. Top with half of the gingerbread cubes and half of the Vanilla Yogurt Cream. Repeat layers; end with the remaining fruit and pomegranate seeds. Sprinkle with pecans. Serve within 30 minutes of assembly.",
        category: "Dessert",
        datePublished: "Oct 13, 2021",
        url: "https://www.forksoverknives.com/recipes/vegan-desserts/fall-fruit-trifle-pumpkin-gingerbread/")
    ]
}
