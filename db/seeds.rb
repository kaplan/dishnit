# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


catgories = [
    { :name => "American"},
    { :name => "Chinese"},
    { :name => "French"},
    { :name => "Italian"},
    { :name => "Mexican"},
    { :name => "Middle Eastern"},
    { :name => "Puerto Rican"},
    { :name => "Southern"},
    { :name => "Sushi"}
]

Category.destroy_all
catgories.each do |category|
  u = Category.new
  u.name = category[:name]
  u.save
end

users = [
  { :username => "Joey", :email => "joseph.maassen@gmail.com"},
  { :username => "Dave", :email => "workalicious@gmail.com"},
  { :username => "Kitty", :email => "kittysingsuwan@gmail.com"},
  { :username => "Wendy", :email => "wendyt27@gmail.com"}
]

User.destroy_all
users.each do |user|
  u = User.new
  u.username = user[:username]
  u.email = user[:email]
  u.save
end

cookbooks = [
  { :user_id => User.find_by_username("Joey").id, :name => "Foodalicious" },
  { :user_id => User.find_by_username("Dave").id, :name => "Special Foods" },
  { :user_id => User.find_by_username("Kitty").id, :name => "Eat Up" },
  { :user_id => User.find_by_username("Wendy").id, :name => "Tasty Delite" }
]

Cookbook.destroy_all
cookbooks.each do |book|
  c = Cookbook.new
  c.user_id = book[:user_id]
  c.name = book[:name]
  c.save
end

recipes = [
  { :name => "Chicken Shawarma",
    :description => "Middle Eastern chicken dish",
    :ingredients => "1 1/2 lbs boneless, skinless chicken thighs or breasts (thinly cut)
                    1 cup plain yogurt
                    1/4 cup vinegar
                    2 cloves garlic, crushed
                    1 teaspoon pepper
                    1/2 teaspoon salt
                    2 cardamom pods
                    1 teaspoon allspice
                    juice from 1 lemon

                    FOR THE SAUCE:
                    1 cup tahini
                    2 cloves garlic, crushed
                    1/4 cup lemon juice
                    2 tablespoons yogurt

                    PITA FILLINGS:
                    8 loaves of pita bread or 4 large
                    thinly slice cucumbers
                    thinly sliced onions
                    1/2 teaspoon sumac
                    thinly sliced tomatoes
                    1/2 cup fresh parsley, finely chopped",
:directions => "Combine all ingredients except for chicken, fillings, and sauce ingredients to make marinade. If it seems a little dry, add a little olive oil (a tablespoon at a time). Here is an excellent tahini recipe, if you do not have some handy.

Add chicken, cover and refrigerate at least 8 hours, preferably overnight.

In a stockpot or large saucepan, cook chicken over medium heat for 45 minutes or until done. Be sure not to overcook! If chicken becomes a little dry, add a few tablespoons of water throughout cooking duration.

While chicken is cooking, prepare the sauce. Combine sauce ingredients and mix well. Set aside.

Take the onions, tomatoes, cucumbers and sprinkle with sumac. Add other filling ingredients in a large bowl and combine well.

When the chicken is done, you can shred it, slice it, or leave into large pieces. As long as it it thinly cut, there is not much difference. I prefer to cut mine into wide strips.",
    :photo_url => "http://thumbs.ifood.tv/files/chicken%20shawarma%20with%20hummus.jpg",
    :category_id => Category.find_by_name("Middle Eastern").id,
    :user_id => User.find_by_username("Joey").id,
    :cookbook_id => Cookbook.find_by_name("Foodalicious").id },

     { :name => "Veal Saltimbocca",
    :description => "Thin Veal Cutlets panfried with prosciutto",
    :ingredients => "12 small veal scaloppini
Salt and freshly ground black pepper
12 small very thin slices prosciutto di Parma plus 2 more pieces, chopped, for sauce
12 fresh sage leaves, plus 4 to 5 leaves, for sauce, plus 12 additional leaves, for garnish
Directions
6 toothpicks, cut in 1/2

Flour, for dredging
2 tablespoons butter
4 tablespoons olive oil, plus more as needed, divided
1 cup dry white wine
2 pounds escarole
2 cloves garlic, chopped fine
1 lemon, juiced, divided",
    :directions => "Season the veal with salt and pepper. Place a slice of prosciutto and a sage leaf on top of each piece of the veal, roll and secure with a toothpick. Dredge the veal in flour and shake off excess flour. In a large saute pan, over medium heat, melt 2 tablespoons of butter and 2 tablespoons of the olive oil. Add the veal and saute for 2 to 3 minutes on each side. Remove the toothpicks and set aside. Cook the remaining veal in batches, adding more olive oil as necessary. Remove the last veal pieces and add 4 to 5 sage leaves, prosciutto pieces and deglaze the pan with the wine. Cook until thickened to sauce consistency. In another saute pan, heat 2 tablespoons olive oil. Saute the escarole until tender, about 5 minutes. Just before serving add the garlic, 1/2 of the lemon juice, season with salt and pepper, and mix well.

To serve, mound the escarole in the center of each plate. Arrange 3 of the veal rolls in the center of each plate. Divide the sauce evenly among the plates, sprinkle with the remaining lemon juice and garnish with the additional sage leaves.",
    :photo_url => "http://img.foodnetwork.com/FOOD/2007/05/17/em0705_veal_lg.jpg",
    :category_id => Category.find_by_name("Italian").id,
    :user_id => User.find_by_username("Joey").id,
    :cookbook_id => Cookbook.find_by_name("Foodalicious").id },

     { :name => "Roasted Pork Tenderloin",
    :description => "Pork roasted in herbs",
    :ingredients => "1 lemon, zest grated
3/4 cup freshly squeezed lemon juice (4 to 6 lemons)
Good olive oil
2  tablespoons minced garlic (6 cloves)
1 1/2 tablespoons minced fresh rosemary leaves
1 tablespoon chopped fresh thyme leaves
2 teaspoons Dijon mustard
Kosher salt
3  pork tenderloins (about 1 pound each)
Freshly ground black pepper",
    :directions => "Combine the lemon zest, lemon juice, 1/2 cup olive oil, garlic, rosemary, thyme, mustard, and 2 teaspoons salt in a sturdy 1-gallon resealable plastic bag. Add the pork tenderloins and turn to coat with the marinade. Squeeze out the air and seal the bag. Marinate the pork in the refrigerator for at least 3 hours but preferably overnight.

Preheat the oven to 400 degrees F.

Remove the tenderloins from the marinade and discard the marinade but leave the herbs that cling to the meat. Sprinkle the tenderloins generously with salt and pepper. Heat 3 tablespoons olive oil in a large oven-proof saute pan over medium-high heat. Sear the pork tenderloins on all sides until golden brown. Place the saute pan in the oven and roast the tenderloins for 10 to 15 minutes or until the meat registers 137 degrees F at the thickest part. Transfer the tenderloins to a platter and cover tightly with aluminum foil. Allow to rest for 10 minutes. Carve in 1/2-inch-thick diagonal slices. The thickest part of the tenderloin will be quite pink (it's just fine!) and the thinnest part will be well done. Season with salt and pepper and serve warm, or at room temperature with the juices that collect in the platter.",
    :photo_url => "http://1.bp.blogspot.com/-_Has1rJ3qI0/UF3HqGECDbI/AAAAAAAAEjI/KXkgptXWV8U/s1600/Pork+Tenderloin+Quesadillas+018.JPG",
    :category_id => Category.find_by_name("American").id,
    :user_id => User.find_by_username("Joey").id,
    :cookbook_id => Cookbook.find_by_name("Foodalicious").id },

     { :name => "Linguine with white clam sauce",
    :description => "As it sounds, linguine with white clam sauce",
    :ingredients => "Extra-virgin olive oil
9 cloves garlic, smashed
5 dozen littleneck clams, scrubbed under cold running water
1 cup white wine
1/2 cup water
1 large pinch crushed red pepper flakes
1 pound linguine
2 tablespoons butter
2 tablespoons chopped Italian parsley leaves
2 tablespoons chopped oregano leaves
1 cup grated Parmigiano-Reggiano, optional, plus shavings for garnish
Kosher salt
Big fat finishing extra-virgin olive oil (high quality)",
    :directions => "Coat a large saute pan with olive oil and add half the garlic cloves. Bring the pan to a medium- high heat and cook until the garlic becomes golden brown. When the garlic is golden brown and very aromatic, remove it and discard, it has fulfilled its garlic destiny. Put 3 1/2 dozen clams in the pan with the wine and 1/2 cup of water. Cover the pan and bring it to a boil over medium heat. Cover and cook until the clams open, about 10 minutes. Remove the clams from the pan and reduce the cooking liquid. Let the clams cool slightly, then remove them from the shells and reserve. Discard the shells. Pour the cooking liquid into a measuring cup.

Bring a large pot of well salted water to a boil over medium heat.

Coat the same saute pan again with olive oil and add the remaining garlic cloves and a large pinch of crushed pepper flakes. Bring the pan to a medium-high heat and cook until the garlic becomes golden brown. When the garlic is golden brown and very aromatic, remove it and discard, it has fulfilled its garlic destiny. Add the remaining raw clams and reserved clam cooking liquid to the pan. When adding the reserved clam liquid, be sure to check for sand and grit in the bottom, you may lose the last couple of tablespoons of juice but that is better than sand in your pasta! Cover and cook until the clams open.

While the clams are cooking, drop the linguine into the salted boiling water and cook until the pasta is very al dente maybe a minute or so less than the box directs.

Remove the cooked clams in their shells from the pan and keep warm. Add the butter and cooked clams that have been removed from their shells back to the pan. Bring the liquid to a boil and toss in the cooked pasta and the herbs. Cook the pasta together with the sauce until the sauce clings to the pasta. Turn off the heat and toss in the grated Parmigiano-Reggiano, if using, and finish with a drizzle of big fat finishing oil. Toss or stir vigorously to combine.

Divide the pasta into serving dishes and garnish with the clams that are still in their shells and a little more shaved Parmigiano-Reggiano, if desired.",
    :photo_url => "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRD8UFenB4mKvlkWmexzsdgpMdDgsXnhC5mAV9CtVD4e7kizuBH-w",
    :category_id => Category.find_by_name("Italian").id,
    :user_id => User.find_by_username("Kitty").id,
    :cookbook_id => Cookbook.find_by_name("Eat Up").id },

     { :name => "Fish Tacos",
    :description => "Grilled Mahi Mahi Tacos with Red Cabbage Slaw, Tomato and Avocado Salsa and Pineapple Hot Sauce",
    :ingredients => "4 (8-ounce) mahi mahi fillets
2 tablespoons canola oil
Salt and freshly ground black pepper
Citrus Vinaigrette, recipe follows
8 (6-inch) flour tortillas, cut into 2 1/2 to 3-inch circles, and deep fried
Red Cabbage Slaw, recipe follows
Tomato and Avocado Salsa, recipe follows
Pineapple hot sauce, store bought or recipe follows, for drizzling",
    :directions => "Preheat grill.

Brush fillets with oil and season with salt and pepper. Grill for 3 to 4 minutes per side.

Remove from grill and drizzle with some of the Citrus Vinaigrette. Let rest 5 minutes and then flake with a fork.

Fill each fried tortilla with some of the mahi, top with the Red Cabbage Slaw, Tomato and Avocado Salsa, and drizzle with Charred Pineapple-habanero Hot Sauce.",
    :photo_url => "http://www.bdoutdoors.com/forums/attachments/fishing-hunting-cooking-recipes/188693d1269873186-i-dont-get-fish-tacos.jpg",
    :category_id => Category.find_by_name("Mexican").id,
    :user_id => User.find_by_username("Kitty").id,
    :cookbook_id => Cookbook.find_by_name("Eat Up").id },

     { :name => "Stuffed Pork Chops",
    :description => "Pork Chops Stuffed with Sun-Dried Tomatoes and Spinach",
    :ingredients => "1 tablespoon olive oil, plus 1 tablespoon
2 cloves garlic, minced
6 sun-dried tomatoes, diced
1 (10-ounce) bag of frozen spinach, thawed and excess water squeezed out
1/2 teaspoon salt, plus more for seasoning
1/2 teaspoon freshly ground black pepper, plus more for seasoning
1/4 teaspoon dried thyme
1/4 cup (2 ounces) goat cheese
1/3 cup reduced-fat cream cheese
4 (4-ounce) center-cut pork chops
1 1/2 cups chicken broth
1/2 lemon, zested
2 tablespoons lemon juice
2 teaspoons Dijon mustard",
    :directions => "Warm the 1 tablespoon olive oil in a medium saute pan over medium heat. Add the garlic and cook until fragrant, about 1 minute. Add the sun-dried tomatoes, spinach, salt, pepper, and thyme. Cook until combined, about 2 more minutes. Transfer the mixture to a medium bowl. Add the goat cheese and the cream cheese. Stir to combine and set aside.

Use a sharp knife to cut a pocket into the thickest portion of the pork chop. Stuff each pocket with 1/4 of the spinach and sun-dried tomato mixture and close the pork around the stuffing. Season the outside of the pork with salt and pepper.

In a small bowl combine the chicken broth, lemon zest, lemon juice, and mustard.

Warm the remaining 1 tablespoon olive oil in a large, heavy skillet over medium-high heat. When the pan is hot add the pork. Cook until golden and cooked through, about 4 minutes per side. Transfer the pork to a side dish and tent with foil to keep warm. Add the chicken broth mixture to the skillet over medium-high heat. Scrape up the brown bits from the bottom of the pan as the chicken broth simmers. Reduce the broth by half to make a light sauce, about 8 minutes. Spoon some sauce over the pork before serving.",
    :photo_url => "http://img.foodnetwork.com/FOOD/2008/12/01/NY0305_Stuffed-Pork-Chops_lg.jpg",
    :category_id => Category.find_by_name("American").id,
    :user_id => User.find_by_username("Dave").id,
    :cookbook_id => Cookbook.find_by_name("Special Foods").id },

     { :name => "Steak",
    :description => "Steak Frites with Herb Mustard",
    :ingredients => "3 tablespoons dijon mustard
1 tablespoon extra-virgin olive oil
1 1/4 pounds flank steak, trimmed of excess fat
Freshly ground black pepper
2 tablespoons minced fresh chives
1 tablespoon minced fresh tarragon
2 pounds large russet potatoes
2 large egg whites
1 teaspoon paprika
Pinch of cayenne pepper
Kosher salt
Olive oil cooking spray",
    :directions => "Preheat the oven to 450 degrees F. Whisk the mustard and olive oil in a small bowl. Coat the steak with 2 tablespoons of the mustard mixture, then season with black pepper and set aside. Whisk the chives, tarragon and 2 tablespoons cold water into the remaining mustard mixture.

Slice the potatoes into 1/4-inch-thick sticks; pat dry. Whisk the egg whites, paprika, cayenne and 1/4 teaspoon salt in a large bowl; add the potatoes and toss. Coat a rimmed baking sheet with cooking spray. Add the potatoes, letting the excess egg drip off; spread out and spray with cooking spray. Bake until golden brown, 25 minutes.

Meanwhile, cook the steak: Sprinkle 1/4 teaspoon salt in a large cast-iron skillet. Heat the pan over high heat until very hot, then add the steak and place another heavy skillet on top to weigh it down. Sear until browned, about 3 minutes per side. Turn off the heat and let the steak rest in the pan, 5 to 8 more minutes for medium rare. Thinly slice against the grain and serve with the fries and herb mustard.",
    :photo_url => "http://www.uwishunu.com/wp-content/uploads/2012/10/gtc-steak-frites-300uw.jpg",
    :category_id => Category.find_by_name("French").id,
    :user_id => User.find_by_username("Dave").id,
    :cookbook_id => Cookbook.find_by_name("Special Foods").id },

     { :name => "Shrimp Sushi Rolls",
    :description => "Shrimp and rice rolled up nice!",
    :ingredients => "1/3 cup seasoned rice vinegar
2 teaspoons sugar
1 teaspoon salt
1 1/2 cup short-grained sushi rice
1 1/2 cups water
4 sheets toasted nori",
    :directions => "For the rice:

Mix together vinegar, sugar, and salt.

Rinse the rice with cool water in a colander; drain. Put the rice and water in a medium saucepan with a tight fitting lid. Bring to a boil over high heat, reduce heat to very low and simmer, tightly covered, (For a good seal, wrap the pan's lid tightly with a small kitchen towel and cover the saucepan. Make sure the towel's edges are folded up well away from the heat.) Cook until all the water is absorbed, about 15 minutes. Remove the rice from the heat (don't uncover), and set aside for 10 minutes.

Fluff the rice with a fork and transfer to a large bowl. Add the vinegar mixture and toss with a wooden spoon. Spread the rice out on a parchment paper-lined baking sheet. Fan the rice continuously with a fan or magazine until cooled. Cover the rice with a damp towel.

To assemble rolls:

Place the sushi mat with the slats running crosswise directly in front of you on a clean work space. Lay a sheet of nori shiny-side down and lined up with the closest edge of the mat. Light moisten fingers with water, and evenly press about 1/4 of the rice onto the nori, with 1 1/2-inches uncovered at the far edge. Line up the fillings about an inch from the closest near edge, evenly across the rice. Leave 1 inch of rice uncovered at the far edge.

Beginning with the near edge of the mat, tightly roll up the nori, rice, and fillings into a cylinder. Firmly tug on the rounded mat over the roll as you pull on the far edge of the mat to tighten the roll. Open the mat, dab unsealed edge of nori with a bit of water and roll the sushi forward to seal. Transfer the sushi to a plate and cover with damp paper towels. Repeat with remaining rice and fillings.

Cut each sushi roll, crosswise, into 8 pieces with a sharp wet knife.

Serve with bowl of soy sauce for dipping.",
    :photo_url => "http://1.bp.blogspot.com/_zzFoewmU6-o/TTH-_FrDQhI/AAAAAAAAGLw/CyMwF7AAKVU/s1600/Tiger+Sushi+Roll.JPG",
    :category_id => Category.find_by_name("Sushi").id,
    :user_id => User.find_by_username("Wendy").id,
    :cookbook_id => Cookbook.find_by_name("Tasty Delite").id },

     { :name => "BBQ Meatloaf",
    :description => "Traditional Meatloaf with a Twist",
    :ingredients => "1 1/2 pounds ground beef
1 cup fresh bread crumbs
1 onion, diced
1 egg, lightly beaten
1 1/2 teaspoons salt
1/2 teaspoon pepper
2 (8-ounce) cans tomato sauce
3 tablespoons vinegar
3 tablespoons brown sugar
2 tablespoons Dijon mustard
2 tablespoons Worcestershire sauce
1/2 cup water, to thin sauce if necessary",
    :directions => "Preheat oven to 350 degrees F.

Mix together the beef, bread crumbs, onion, egg, salt, pepper, and 1/2 cup of the tomato sauce. Form this mixture into a loaf and place it in a shallow pan. Stir together the remaining tomato sauce, vinegar, sugar, mustard, Worcestershire and the water (if too thick). Pour this sauce over the meatloaf. Bake for 1 hour, basting every 15 minutes with the pan juices.",
    :photo_url => "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS0SadrbdhRlxePwH5CYQwgvzK1zrcuf1H4GNVguZShyJzRedUHvw",
    :category_id => Category.find_by_name("Southern").id,
    :user_id => User.find_by_username("Wendy").id,
    :cookbook_id => Cookbook.find_by_name("Tasty Delite").id },

     { :name => "Brussel Sprouts",
    :description => "Roasted Brussel Sprouts",
    :ingredients => "1 1/2 pounds Brussels sprouts
3 tablespoons good olive oil
3/4 teaspoon kosher salt
1/2 teaspoon freshly ground black pepper",
    :directions => "Preheat oven to 400 degrees F.

Cut off the brown ends of the Brussels sprouts and pull off any yellow outer leaves. Mix them in a bowl with the olive oil, salt and pepper. Pour them on a sheet pan and roast for 35 to 40 minutes, until crisp on the outside and tender on the inside. Shake the pan from time to time to brown the sprouts evenly. Sprinkle with more kosher salt ( I like these salty like French fries), and serve immediately.",
    :photo_url => "http://slimpickinskitchen.com/wp-content/uploads/2012/12/Caramalized-Brussels-Sprouts-21.jpg",
    :category_id => Category.find_by_name("American").id,
    :user_id => User.find_by_username("Wendy").id,
    :cookbook_id => Cookbook.find_by_name("Tasty Delite").id },

         { :name => "Fried Rice",
    :description => "Sesame Shrimp Fried Rice with Cabbage",
    :ingredients => "1 tablespoon canola oil
4 scallions, white and green parts, thinly sliced
1 tablespoon peeled, grated fresh ginger
1 pound peeled, cleaned small shrimp
5 cups thinly sliced green cabbage, cut crosswise into 3-inch pieces
1 tablespoon toasted sesame oil
4 cups very cold cooked brown rice
3 tablespoons low-sodium soy sauce
2 tablespoons sesame seeds",
    :directions => "Heat the oil in a very large nonstick skillet or wok over a high heat. Add the scallions, ginger and shrimp and cook stirring frequently until the shrimp turn pink, about 1 1/2 minutes. Add the cabbage and continue cooking until it begins to soften, but is still somewhat crisp, about 2 minutes more. Transfer the shrimp-cabbage mixture to a bowl.

Heat the sesame oil in the same skillet or wok over a medium-high heat. Add the rice and cook stirring frequently, until heated through, about 3 minutes. Add the shrimp-cabbage mixture back to the skillet, stir in the soy sauce and sesame seeds and serve.",
    :photo_url => "http://img4-1.myrecipes.timeinc.net/i/recipes/ck/06/08/fried-rice-ck-1215928-l.jpg",
    :category_id => Category.find_by_name("Chinese").id,
    :user_id => User.find_by_username("Wendy").id,
    :cookbook_id => Cookbook.find_by_name("Tasty Delite").id },

         { :name => "Chocolate Covered Strawberries",
    :description => "Dessert",
    :ingredients => "6 ounces semisweet chocolate, chopped
3 ounces white chocolate, chopped
1 pound strawberries with stems (about 20), washed and dried very well",
    :directions => "Put the semisweet and white chocolates into 2 separate heatproof medium bowls. Fill 2 medium saucepans with a couple inches of water and bring to a simmer over medium heat. Turn off the heat; set the bowls of chocolate over the water to melt. Stir until smooth. (Alternatively, melt the chocolates in a microwave at half power, for 1 minute, stir and then heat for another minute or until melted.)

Once the chocolates are melted and smooth, remove from the heat. Line a sheet pan with parchment or waxed paper. Holding the strawberry by the stem, dip the fruit into the dark chocolate, lift and twist slightly, letting any excess chocolate fall back into the bowl. Set strawberries on the parchment paper. Repeat with the rest of the strawberries. Dip a fork in the white chocolate and drizzle the white chocolate over the dipped strawberries.

Set the strawberries aside until the chocolate sets, about 30 minutes.",
    :photo_url => "http://img.foodnetwork.com/FOOD/2009/01/13/vday_chocolatestraw_4697_s4x3_lg.jpg",
    :category_id => Category.find_by_name("American").id,
    :user_id => User.find_by_username("Joey").id,
    :cookbook_id => Cookbook.find_by_name("Foodalicious").id },

         { :name => "Bleu Cheese Burgers",
    :description => "Fancy Cheeseburgers",
    :ingredients => "2 pounds ground chuck
1 pound ground sirloin
1/2 cup seasoned dry bread crumbs
1/4 cup steak sauce (recommended: Crosse and Blackwell)
3 extra-large eggs
1 1/2 teaspoons kosher salt
3/4 teaspoon freshly ground black pepper
8 to 10 hamburger buns
8 ounces blue cheese, sliced (recommended: Danish Blue)
Arugula and sliced tomatoes, for serving, optional",
    :directions => "Carefully mix the meats, bread crumbs, steak sauce, eggs, salt, and pepper with the tines of a fork, but do not mash them. Lightly form hamburger patties and press lightly into shape.

Prepare a charcoal or a stove-top grill.

Cook the hamburgers for 4 minutes on 1 side, then turn and cook 3 minutes on the other side for medium-rare. Remove to a plate and cover with aluminum foil. Allow the hamburgers to rest for 5 minutes. Meanwhile, grill the buns, cut side down, for 1 minute, until toasted. Place a hamburger and a slice of blue cheese in each bun, plus arugula and tomato, if desired, and serve hot.",
    :photo_url => "http://www.foodrepublic.com/sites/default/files/imagecache/enlarge/recipe/baconbluecheeseburger.jpg",
    :category_id => Category.find_by_name("American").id,
    :user_id => User.find_by_username("Joey").id,
    :cookbook_id => Cookbook.find_by_name("Foodalicious").id },

         { :name => "Manicotti",
    :description => "Northern Italian Pasta Shell Filling",
    :ingredients => "3 packages frozen, chopped spinach
3 pounds ground round
2 (8-ounce) packages cream cheese, softened
2 large onions, chopped
Grated Parmesan
Salt and pepper
2 jumbo eggs
1 (1-pound) package jumbo pasta shells
2 cups tomato sauce (your own or ready-made)",
    :directions => "Place frozen spinach in a strainer and run under hot water until thawed. Squeeze all of the water out and place in a large bowl. In a large saute pan, cook the ground round until browned. Drain meat, reserving 2 tablespoons fat in the pan, and place meat in the same bowl with the spinach. Stir in the cream cheese until blended with the meat and spinach. Saute the chopped onions in the reserved meat fat until transparent. Transfer onions to the bowl with the other ingredients and stir to combine. Add grated cheese, salt, and pepper, to taste, and combine. Let mixture cool and then add the eggs. The filling can be made up to 1 day in advance and refrigerated until ready to use.

Preheat the oven to 350 degrees F.

Cook pasta shells in boiling, salted water until al dente. Drain and cool to the touch. Stuff the shells with the meat mixture. Place shells in a large baking pan and cover with tomato sauce. Cover with foil and bake for approximately 1 hour. Serve.",
    :photo_url => "http://www.melskitchencafe.com/wp-content/uploads/2009/09/Manicotti-Blog-JPG-449x337.jpg",
    :category_id => Category.find_by_name("Italian").id,
    :user_id => User.find_by_username("Kitty").id,
    :cookbook_id => Cookbook.find_by_name("Eat Up").id },

         { :name => "Tomatillos",
    :description => "Braised Chicken with Tomatillos and Jalapenos",
    :ingredients => "6 tomatillos, husked
2 jalapenos
Extra-virgin olive oil
4 chicken thighs, trimmed of excess fat and skin
4 chicken legs
Kosher salt
1 large Spanish onion, cut into 1/4-inch dice
3 cloves garlic, smashed and finely chopped
2 cups chicken stock
2 limes, zested and juiced
1/4 cup chopped fresh cilantro, plus a few more leaves for garnish
Lime Sour Cream:
1/2 cup sour cream
2 limes, zested and juiced",
    :directions => "For the chicken: Preheat the grill.

Place the tomatillos and jalapenos on the grill and cook until the skins char and blister, 10 to 12 minutes. Remove the tomatillos and jalapenos from the grill and let cool.

Coat a large, wide straight-sided saute pan with olive oil and bring to medium-high heat.

Sprinkle the chicken generously with salt. Add the chicken legs and thighs, skin-side down, to the hot pan. Brown the chicken well on all sides. Remove from the pan and reserve.

Ditch the excess fat from the pan and add a few drops of new oil. Add the onions, season with salt and cook until the onions are very soft and aromatic, 7 to 8 minutes.

While the onions are cooking, coarsely chop the tomatillos and reserve. Chop the jalapenos into 1/4-inch dice and reserve with the tomatillos. If you want to tone down the heat, remove the seeds from the jalapenos before chopping.

Add the garlic to the pan with the onions and cook for 1 to 2 minutes.

Add the reserved tomatillos and jalapenos. Stir to combine and add the chicken stock, lime juice and zest. Taste and season with salt if needed (it probably will).

Return the chicken to the pan and bring to a boil. Reduce to a simmer and cover. Cook for 15 minutes.

Remove the lid and let cook for 15 more minutes. This will allow the stock to reduce. Taste for seasoning and adjust if needed.

For the sour cream: Combine the sour cream with the lime zest and juice and reserve.

Remove the chicken from the pan and stir in the cilantro.

Spoon the sauce over the chicken, sprinkle with cilantro leaves and serve with the lime sour cream.",
    :photo_url => "http://img.foodnetwork.com/FOOD/2011/11/26/LR0812H_Braised-Chicken-with-Tomatillos-and-Jalapenos_s4x3_lg.jpg",
    :category_id => Category.find_by_name("Mexican").id,
    :user_id => User.find_by_username("Kitty").id,
    :cookbook_id => Cookbook.find_by_name("Eat Up").id },

         { :name => "Mussels",
    :description => "Mussels in Spicy Red Sauce",
    :ingredients => "2 tablespoons olive oil
1 tablespoon minced garlic (6 cloves)
1 to 2 teaspoons crushed red pepper
1 cup white wine
2 cups Red Sauce or Fra Diavlo Sauce, recipes follow
3 pounds medium mussels, scrubbed, de-bearded, rinsed and drained
2 tablespoons freshly chopped parsley leaves",
    :directions => "Heat the olive oil in a pan over medium heat. Add the garlic and red pepper, and saute until fragrant, stirring, about 30 seconds. Add the white wine and tomato sauce, increase the heat to high, cover and bring to a boil.

Add the mussels and replace the lid. Cook over high heat 3 minutes. Remove the lid and stir once gently. Continue to cook until the mussels are completely open and firmly cooked, about 4 minutes more.

Remove the pot from the heat and transfer the mussels gently from the pot to a large bowl with a Chinese wire mesh skimmer. Return the pot to the heat and increase the heat to high. Boil for a minute or 2, until the sauce is thick enough to coat a spoon. Pour the sauce over the mussels and serve immediately.",
    :photo_url => "http://img.foodnetwork.com/FOOD/2008/05/18/EM0917_Mussels-in-Spicy-Red-Sauce_lg.jpg",
    :category_id => Category.find_by_name("Italian").id,
    :user_id => User.find_by_username("Kitty").id,
    :cookbook_id => Cookbook.find_by_name("Eat Up").id },

         { :name => "Scalloped Potatoes",
    :description => "Middle Eastern chicken dish",
    :ingredients => "1 1/2 cups heavy cream
1 sprig fresh thyme
2 garlic cloves, chopped
1/2 teaspoon ground nutmeg
Butter
2 pounds russet potatoes, peeled and cut into 1/8-inch thick slices
Salt and freshly ground black pepper
1/2 cup grated Parmesan, plus more for broiling",
    :directions => "Preheat the oven to 375 degrees F.

In a saucepan, heat up the cream with a sprig of thyme, chopped garlic and nutmeg.

While cream is heating up, butter a casserole dish. Place a layer of potato in an overlapping pattern and season with salt and pepper. Remove cream from heat, then pour a little over the potatoes. Top with some grated Parmesan. Make 2 more layers. Bake, uncovered, for 45 minutes. Sprinkle some more Parmesan and broil until cheese browns, about 5 minutes.",
    :photo_url => "http://ford-life.com/wp-content/uploads/2011/04/7b17c96c-63f5-479b-a544-dde7efff877c_scalloped-potatoes.jpg",
    :category_id => Category.find_by_name("French").id,
    :user_id => User.find_by_username("Dave").id,
    :cookbook_id => Cookbook.find_by_name("Special Foods").id },

         { :name => "Coleslaw",
    :description => "Coleslaw with broccoli",
    :ingredients => "2 bags (3-ounce) Ramen Noodle Soup in Oriental (other flavors will work, too)
3/4 stick butter
1/4 cup slivered almonds
2 bags (12-ounce) bags broccoli cole slaw (in the bagged salad section of the grocery store)
1/4 cup sunflower seeds
Chopped green onions, for garnish
Dressing Mix:
3/4 cup canola oil
1/4 cup brown or white sugar
1/4 cup apple cider vinegar
1 ramen noodle seasoning packet",
    :directions => "Put the ramen noodles in a bag and crush them with a rolling pin while melting butter in a large skillet over low/medium heat. Add the crushed noodles and slivered almonds to the skillet and saute, stirring occasionally (keep temperature at low/medium heat). Meanwhile, whisk together all the dressing ingredients in a small bowl. Place the shredded broccoli into bowl and toss with the noodles, almonds, and sunflower seeds. Pour dressing over salad and toss to coat. Garnish with chopped green onions.",
    :photo_url => "http://everybodylikessandwiches.com/wp-content/uploads/2010/05/dinner1.jpg",
    :category_id => Category.find_by_name("Southern").id,
    :user_id => User.find_by_username("Dave").id,
    :cookbook_id => Cookbook.find_by_name("Special Foods").id },

         { :name => "Ceasar Salad",
    :description => "The Ultimate Salad",
    :ingredients => "1 clove garlic, smashed with a pinch of salt and a little olive oil
4 anchovy fillets
2 egg yolks
1 tablespoon Dijon mustard
2 lemons, juiced
2 tablespoons water
1/2 cup extra-virgin olive oil
1/4 cup freshly grated Parmesan, plus extra for garnish
Freshly ground black pepper
2 heads romaine lettuce",
    :directions => "Make the dressing: Smear the garlic paste over the inside of the salad bowl. Put the anchovies, egg yolks, mustard, lemon juice, and water into a blender and process for 30 seconds until the mixture is smooth. With the blender running, pour the olive oil in slowly for the dressing to emulsify. Stir in the Parmesan, a pinch of salt and a couple of grinds of black pepper; set aside. (Refrigerate the dressing if you will not be using it right away.)

Assemble the salad: Tear the lettuce into a large bowl. Add enough dressing to coat the salad to your liking. Add some extra Parmesan and toss the salad well. Serve immediately.",
    :photo_url => "http://img.foodnetwork.com/FOOD/2012/04/04/WU0212_Caesar-Salad-With-Croutons_s4x3_lg.jpg",
    :category_id => Category.find_by_name("American").id,
    :user_id => User.find_by_username("Dave").id,
    :cookbook_id => Cookbook.find_by_name("Special Foods").id },

         { :name => "Chili",
    :description => "Middle Eastern chicken dish",
    :ingredients => "6 slices bacon
2 pounds ground beef chuck
1 large onion, chopped
1 large green bell pepper, chopped
4 cloves garlic, finely chopped
Kosher salt
1/4 cup chili powder
1 tablespoon ground cumin
2 teaspoons paprika
2 teaspoons dried oregano
2 tablespoons tomato paste
1 12-ounce bottle amber beer
2 tablespoons unsweetened cocoa powder
1 28-ounce can whole plum tomatoes, crushed by hand
1 1/2 cups low-sodium beef broth, plus more if needed
2 15-ounce cans black beans, drained and rinsed
1 tablespoon hot sauce
Shredded cheddar cheese, sliced scallions and/or sour cream, for topping (optional)",
    :directions => "Cook the bacon in a large saucepan or Dutch oven over medium heat until crisp, 6 to 8 minutes per side. Drain on a paper towel-lined plate and let cool, then crumble and set aside. Pour off all but 1 tablespoon of the bacon drippings from the saucepan (reserve the drippings). Increase the heat to medium high, add the beef and cook, breaking up the meat with a wooden spoon, until browned, about 8 minutes. Transfer to a plate using a slotted spoon; wipe out the pan.

Heat 1 tablespoon of the reserved bacon drippings in the saucepan over medium-high heat. Add the onion and bell pepper and cook, stirring, until soft, about 5 minutes. Add the garlic and 1 teaspoon salt and cook 2 minutes. Add the chili powder, cumin, paprika, oregano and tomato paste and cook, stirring, until the tomato paste is brick red, about 6 minutes (add a splash of water if the mixture begins to stick). Add the beer and simmer until almost completely reduced, about 3 minutes.

Stir in the beef and any juices from the plate; add the cocoa powder, tomatoes, beef broth and beans and bring to a simmer over low heat. Cook, stirring occasionally, until the chili thickens slightly, about 1 hour, 30 minutes.

Stir the hot sauce into the chili and season with salt. Add some beef broth if the chili is too thick. Ladle into bowls and top with the crumbled bacon, cheese, scallions and/or sour cream.",
    :photo_url => "http://img.foodnetwork.com/FOOD/2011/12/07/FNM_010112-Light-Rich-014_s4x3_lg.jpg",
    :category_id => Category.find_by_name("American").id,
    :user_id => User.find_by_username("Wendy").id,
    :cookbook_id => Cookbook.find_by_name("Tasty Delite").id },
]

Recipe.destroy_all
recipes.each do |recipe|
  r = Recipe.new
  r.name = recipe[:name]
  r.description = recipe[:description]
  r.ingredients = recipe[:ingredients]
  r.directions = recipe[:directions]
  r.photo_url = recipe[:photo_url]
  r.category_id = recipe[:category_id]
  r.user_id = recipe[:user_id]
  r.cookbook_id = recipe[:cookbook_id]
  r.save
end

catalogs = [
  { :cookbook_id => Cookbook.find_by_name("Foodalicious").id, :recipe_id => Recipe.find_by_name("Chicken Shawarma").id},
]

Catalog.destroy_all
catalogs.each do |cat|
  d = Catalog.new
  d.cookbook_id = cat[:cookbook_id]
  d.recipe_id = cat[:recipe_id]
  d.save
end
