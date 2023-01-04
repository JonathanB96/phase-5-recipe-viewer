import React, {useState, useContext} from 'react'
import '../styles/Card.css'
import { UserContext } from './user'

export default function Card({recipe, recipeList, setRecipeList}) {
  const [btn, setBtn] = useState(true)
  const { user, setUser } = useContext(UserContext);
  const [newSteps, setNewSteps] = useState("")
  const [clickedRecipe, setRecipe] = useState(recipe)
  //changing state when the btn is clicked
 
  function handleClick(){
    setBtn(!btn)   
    console.log(recipe.user.username) 
    console.log(user.username)
  }

  function handleDelete(){   
    console.log(recipeList)
   
    fetch(`/recipes/${recipe.id}`,{method: 'DELETE'})
    .then(r=>{
      if(r.ok){
        const newRecipeList = recipeList.filter((r)=>{
          return r.id!= recipe.id          
        })
        setRecipeList(newRecipeList)  
        

      }
      })
    
    }
    function handleChange(e){
        setNewSteps(e.target.value)

    }
    function handleEdit(e){
        const clickedReview = recipeList.find((recipe)=>{return recipe.user.username === user.username})
        e.preventDefault()
        fetch(`/recipes/${recipe.id}`, {
          method: "PATCH",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({steps: newSteps}
          ),
        }).then((r) => r.json())
        .then((newRecipe)=>{
              console.log(newRecipe)
              const newList = recipeList.map((recipe)=>{
            if(recipe.id === newRecipe.id){
              return newRecipe
            }
            else {
              return recipe
            }
          })
         setRecipeList(newList)
         setNewSteps("")
       
        })    
      }  

      function addToFavorites(){
        
       fetch(`/favorites`,{
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({recipe_name: recipe.name,
        recipe_steps: recipe.steps, image_url: recipe.image_url, user_id: user.id, cuisine_id: recipe.cuisine_id})
      })
      .then(r=>r.json())
      .then((fav)=>{
        console.log(fav) 
      })
      }
    


  return <>
  <div className='card' style={{backgroundImage: `url(${recipe.image_url})`}}>
  
        <div className="overlay">
            
            <h4>{recipe.name}</h4>
            <button id="favorite" onClick={addToFavorites}>Add to Favorites</button> 
            <div className={!btn? "overlay2": "steps"}> 
              <p><small>{recipe.steps}</small></p>
              {user&&user.username===recipe.user.username?
               <form onSubmit={handleEdit} className={!btn? "overlay2": "steps"}>
               <textarea value={newSteps} onChange={handleChange}>

               </textarea>
               <input type="submit" value="Edit"/>
             </form>:null}
             
              
            </div>

                 
            
        </div>
        
     <div id='card-bottom'>
     {user&&user.username===recipe.user.username?<button id="del-btn"onClick={handleDelete}>Delete</button>:null} 
     
    <button className="card-btn" onClick={handleClick} style={{background: !btn? "rgba(0, 0, 0, 0.5)": "#000"}}>{!btn?"Hide Recipe": "Show Recipe"}</button> 


    </div>   
    
  </div>
  
  </>
}
