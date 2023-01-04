import React, {useState, useEffect}from 'react'
import RecipeCard from './RecipeCard';
import '../styles/RecipeList.css'
export default function GameList() {

  const [recipes, setRecipes] = useState([])
  const [recipeList, setRecipeList]= useState([])
  
  useEffect(() => {
    fetch("/recipes")
      .then((r) => r.json())
      .then((recipes)=>{
        setRecipes(recipes)
        setRecipeList(recipes)
        console.log(recipes)
      
      });
  }, []);
  
 //Search 
  function handleSearch(e){
    if(e.target.value===""){
      setRecipeList(recipes)
      return
    }
    const filteredValues = recipeList.filter((item)=>{
      return item.name.toLowerCase().indexOf(e.target.value.toLowerCase()) !== -1
    })
    setRecipeList(filteredValues)
  }
 
  
  return (<div id="wrapper">
            
            <div><input type="text" id='search' placeholder='Search for a recipe' onChange={handleSearch}/></div>
            <div className='container'>{recipeList &&
                recipeList.map((recipe)=>{
                return <RecipeCard recipe={recipe} key={recipe.id} recipeList={recipeList} setRecipeList={setRecipeList}/>
            })}

            </div>
        </div>
        
  )
}
