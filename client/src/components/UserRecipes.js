import React, {useContext, useEffect, useState} from 'react'
import { UserContext } from './user'

export default function UserRecipes() {
  const { user, setUser } = useContext(UserContext);

  useEffect(() => {
    fetch(`/${user.id}/favorites`)
      .then((r) => r.json())
      .then((recipes)=>{
        console.log(recipes)       
      
      });
  }, []);
  const [recipes, setRecipes] = useState([])
  const [recipeList, setRecipeList]= useState([])
  
  useEffect(() => {
    fetch("/favorites")
      .then((r) => r.json())
      .then((recipes)=>{
        setRecipes(recipes)
        setRecipeList(recipes)
        console.log(recipes)
      
      });
  }, []);

  function deleteFavorite(e){
    
    let id = e.target.parentNode.getAttribute("title")
    fetch(`/favorites/${id}`,{
      method: "DELETE"
    })
    .then(r=>{
      if(r.ok){
        const newRecipeList = recipeList.filter((r)=>{
          return r.id!= id          
        })
        setRecipes(newRecipeList)  
        

      }
      })
  }
    
    
  return <>
  
  <div id="wrapper">
    <h1>My recipes</h1>
           <h2>
            My Favorites
           </h2>
            {recipes.map((recipe)=>{
              return <div key={recipe.id} title={recipe.id}>
                  <h2>{recipe.recipe_name}</h2>
                  <p>{recipe.recipe_steps}</p>
                  <button className='myButton' onClick={deleteFavorite}>Delete</button>
              </div>
            })}
           
 </div>

  
</>
   
}
