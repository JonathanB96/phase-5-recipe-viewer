
class PagesController < ApplicationController

    def download
      pdf = Prawn::Document.new
      pdf.text "9 Easy Cooking Tips
      Cooking as a beginner doesn’t have to be stressful. With the right tips and practices, you can easily make delicious meals for the whole family to enjoy. Browse the nine tips and tricks below to help you in the kitchen!
      
      1. Read the Entire Recipe
      Reading the entire recipe before cooking allows you to familiarize yourself with the dish. That way, you’ll feel more confident when making it. If you merely skim the recipe without reading the instructions carefully, you may overlook one or more crucial steps. Take as much time as you need to look over the directions.
      
      Remember to read the full ingredient list, as well — it’s important to know what you’ll need to pick up from the store and what’s already sitting in your kitchen. Once you’ve read the recipe from top to bottom and gathered all of your ingredients, you’ll be ready to start cooking.
      
      If you’re reading a recipe online, you can even venture into the comments. There, you may find some cooking tips for improving the dish, like adjusting ingredient amounts, substitution ideas or cooking time and temperature recommendations.
      
      2. Make Notes While You Cook
      While you should try to stick to the recipe instructions — especially if you’re a beginner — you don’t always have to go by the book exactly when you’re cooking. Maybe you’d like to swap out a specific ingredient or add more or less of another ingredient. Playing around with portions and ingredients is part of the fun when cooking, so don’t hesitate to do so. 
      
      It’s a good idea to note these adjustments as you go. It’s easier to remember something if you write it down, so jotting down notes for that particular recipe will be helpful if you plan to make it again in the future.
      
      Even if you don’t make changes to a recipe, you can take notes on it. Did you have to adjust the cooking time in your oven? Do you think it’d taste better with more or less of an ingredient? Did you discover a new favorite recipe that you’ll want to cook again? Take notes on these and more to help your future self.
      
      3. Season and Taste-Test While Cooking
      Taste-testing the dish as you cook is one of the most critical steps to remember. It’s also one of the most fun cooking tips! If you don’t try it as you go, how will you know if it tastes good? 
      
      You don’t want to wait until the dish is finished to do the first taste-test — try to do this throughout the cooking process. That way, you can season and adjust ingredients accordingly. Maybe it could use more salt, pepper, onion powder, garlic or sugar. The only way to know for sure is to taste away! Just make sure whatever you’re tasting doesn’t include raw ingredients like eggs or meats.
      
      4. Substitute Items When Necessary
      Experimenting with ingredients is part of the fun of cooking. In fact, there may be times when substitutes are necessary. If there’s an expensive or obscure ingredient on the list, you can usually find a more affordable — and tastier — alternative. 
      
      For instance, pre-cooked chicken or beef can be great substitutes for pricier meat cuts, yet they don’t compromise flavor or nutritional value. They’re also excellent time savers if you need a quick, easy dinner for yourself or the family!
      
      5. Pay Attention to Your Food’s Consistency
      Besides flavor, texture can also make or break a recipe. Many people find that when a dish doesn’t turn out as expected, it often has to do with consistency. Pay close attention to texture as you cook. 
      
      For example, if the chicken looks dry, consider adding in some chicken broth. If your cookie dough is rock hard and difficult to scoop out, try adding a splash of milk. A sauce with noticeable lumps may need a good whisking. 
      
      6. Improvise While Cooking But Not Baking
      It’s fun to get creative while cooking on the stovetop, but baking is more of an exact science. We mentioned earlier that you can substitute items when cooking, but we don’t recommend experimenting with baked recipes until you get more experience under your belt. 
      
      Baked goods require certain measurements of ingredients that influence moisture, consistency and leavening or rising. If you use too much baking soda in a cake, it could create a mess in the oven or compromise flavor. When it comes to bread, cookies, cakes or other baked goods, follow the recipe precisely.
      
      7. Don’t Be Afraid to Try New Things
      While you should start out by cooking dishes you like, don’t be afraid to branch out as well. Doing so can help you discover new favorite recipes. You know what you and your family like — try to find recipes that match these preferences but include a little variation if possible. 
      
      If you have frozen beef or chicken on hand, tacos may be a meal that comes to mind. But, instead of traditional tacos, why not spice things up with a Taco Tuesday? Try new fillings, toppings and taco recipes to liven up dinnertime!
      
      8. Cook What You Know for Guests
      Trying new recipes is more ideal when cooking for yourself or your immediate family. Sticking to familiar recipes is typically best when cooking for guests. When you cook a dish for the first time, you can’t predict exactly how it will taste or how much time you’ll need to prep it. 
      
      That said, it’s better to serve something you’ve made a few times to your dinner guests. It makes meal prep more of a breeze and you know the dish will turn out well. In the meantime, work on mastering new recipes on your own so you can make them for guests in the future!
      
      9. Trust Yourself
      Last but not least, it’s important to trust your gut when cooking. If something seems off, it probably is — despite being part of the recipe. There may be millions of recipes out there, but remember that each person has their own idea of what sounds and tastes best. Even if you’re a beginner, follow your instincts and address them whenever possible. You know more than you think!"
  
      send_data(pdf.render, filename: 'tips.pdf', type: 'application/pdf')
    end
  
   
  end
  