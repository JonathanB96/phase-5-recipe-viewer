# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create(
    username: "user1", 
    password: "password1"
    )
user2 = User.create(
    username: "user2", 
    password: "password2"
   )

user3 = User.create(
    username: "user3", 
    password: "password3"
   )
user4 = User.create(
    username: "user4", 
    password: "password4"
    )
user5 = User.create(
        username: "user5", 
        password: "password5"
  )



cuisines = ['American', 'Global', 'Cuisine', 'Italian', 'Vegetarian', 'Asian', 'Mexican']

cuisines = cuisines.each do |cuisine|
    Cuisine.create(name: cuisine)
end

 
 Recipe.create(
    name: "Easy Salsa Sloppy Joes",
    steps: "In a large skillet, cook beef over medium heat until no longer pink, breaking into crumbles; drain. Stir in salsa, soup and brown sugar. Cover and simmer 10 minutes or until heated through. Serve on buns.",
    image_url: "https://drive.google.com/uc?id=1B3Tza3a5H69qH1fPLHkz8m-hx2c6TrsD",
    category_id: 2,
    user_id: rand(1..5),
    cuisine_id: 1

 )
 Recipe.create(
    name: "Cheesy Hash Brown Bake",
    steps: "Preheat oven to 350°. In a large bowl, combine potatoes, soup, sour cream, 1-3/4 cups cheddar cheese and the Parmesan cheese. Place in a greased 3-qt. baking dish. Sprinkle with remaining cheddar cheese. Bake, uncovered, until bubbly and cheese is melted, 40-45 minutes. Let stand 5 minutes before serving.",
    image_url:"https://drive.google.com/uc?id=1ocOm__U7moQQCEtCHAIpBtCsm1mxR8Ms",
    category_id: 5,
    user_id: rand(1..5),
    cuisine_id: 2
 )
 Recipe.create(
    name: "Shorcut Split Pea Soup",
    steps: "In a large saucepan, bring the water, bouillon granules and thyme to a boil. Thinly slice celery ribs and finely chop the leaves; set leaves aside. Add celery ribs and carrots to water mixture; simmer, uncovered, for 5-8 minutes or until tender. Stir in the soup, ham and celery leaves;",
    image_url: "https://drive.google.com/uc?id=11q-LyUZiwGjEhtflVRnkxuCOSfzz-nfk",
    category_id: 3,
    user_id: rand(1..5),
    cuisine_id: 2
 )
 Recipe.create(
    name: "Tasty Onion Chicken",
    steps: "In a shallow bowl, combine butter, Worcestershire sauce and mustard. Place onions in another shallow bowl. Dip chicken in butter mixture, then coat with onions. Place in a greased 11x7-in. baking dish; drizzle with remaining butter mixture. Bake, uncovered, at 400° for 20-25 minutes or until a thermometer reads 165°.",
    image_url: "https://drive.google.com/uc?id=1SU9exencf_e1-RP18wtrXVFzSBcOYu62",
    category_id: 3,
    user_id: rand(1..5),
    cuisine_id: 1
 )
 Recipe.create(
    name: "Quick White Chili",
    steps: "In a large saucepan, combine the first 6 ingredients. Bring to a boil over medium-high heat; remove from the heat. Add cheese and cilantro; stir until cheese is melted. If desired, serve with additional sour cream and cilantro.",
    image_url: "https://drive.google.com/uc?id=1iROVYtvC8hTwWPa02mQdJY4eCQzZhgp1",
    category_id: 3,
    user_id: rand(1..5),
    cuisine_id: 7
 )
 Recipe.create(
    name: "Creamy Coleslaw",
    steps: "Place coleslaw mix in a large bowl. In a small bowl, combine the remaining ingredients; stir until blended. Pour over coleslaw mix and toss to coat. Refrigerate until serving.",
    image_url: "https://drive.google.com/uc?id=1CunxCoho7GpSKU4hhmdtGbic4456Nf0M",
    category_id: 4,
    user_id: rand(1..5),
    cuisine_id: 2
 )
 Recipe.create(
    name: "Enchila Chicken Soup",
    steps: "In a large saucepan, combine the soups, milk, chicken, enchilada sauce and chiles. Cook and stir over medium heat until heated through. Serve with sour cream.",
    image_url:  "https://drive.google.com/uc?id=14UCIX_h27VjWP0LLfS3Pb1zQRVaQPVPV",
    category_id: 3,
    user_id: rand(1..5),
    cuisine_id: 7
 )
 Recipe.create(
    name: "One-pot Mac and cheese ",
    steps: "In a Dutch oven, combine milk, water and macaroni; bring to a boil over medium heat. Reduce heat and simmer until macaroni is tender and almost all the cooking liquid has been absorbed, 12-15 minutes, stirring frequently. Reduce heat to low; stir in cheeses until melted. Season with salt and pepper.",
    image_url: "https://drive.google.com/uc?id=1MTeQAMtKPNW-rPsJKc4_4RFZmO7YS4KD",
    category_id: 2,
    user_id: rand(1..5),
    cuisine_id: 4
 )
 Recipe.create(
    name: "Flavorful Pot Roast",
    steps: "Place the chuck roasts in a 5-qt. slow cooker. In a small bowl, combine the salad dressings and gravy mix; stir in water. Pour over meat. Cover and cook on low for 7-8 hours or until tender. If desired, sprinkle with parsley and thicken cooking juices for gravy.",
    image_url: "https://drive.google.com/uc?id=1ObZ3UvX8FTmAtypjDQUW3QfYJ0jxKQey",
    category_id: 3,
    user_id: rand(1..5),
    cuisine_id: 2
 )