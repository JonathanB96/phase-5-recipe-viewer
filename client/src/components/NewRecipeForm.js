import React,{useState, useContext} from 'react'
import { Link } from "react-router-dom";
import { UserContext } from './user'
import '../styles/AddRecipe.css'
import Modal from './Modal';


export default function NewRecipeForm() {
  const [recipeName, setRecipeName] = useState("")
  const [imgUrl, setImgUrl] = useState("")
  const [steps, setSteps] = useState("")
  const { user, setUser } = useContext(UserContext);
  const [cuisine, setCuisine] = useState("")
  const [errors, setErrors] = useState([]) 

  const formData = {
    name: "",
    steps:"",
    image_url:"",
    user_id:"",
    cuisine:""}


  function handleName(e){
    setRecipeName(e.target.value)

  }
  function handleUrl(e){
    setImgUrl(e.target.value)

  }
  function handleSteps(e){
    setSteps(e.target.value)

  }

  function handleCuisine(e){
    setCuisine(!cuisine)
    setCuisine(e.target.value)

  }
  function handleSubmit(e){
    e.preventDefault()

      formData.name = recipeName
      formData.image_url= imgUrl
      formData.steps= steps
      formData.user_id = user.id
      formData.cuisine = cuisine

      fetch(`/recipes`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/json"},
      body: JSON.stringify(formData)
    }).then((r)=>{if (r.ok){
      r.json().then((newRecipe)=>{
        setRecipeName("")
        setImgUrl("")
        setCuisine("")
        setSteps("")
      })
    }
    else {r.json().then((err) => setErrors(err.errors));}
  })

      // .then((newRecipe)=>{
      //   console.log(newRecipe)
      //   setRecipeName("")
      //   setImgUrl("")
      //   setCuisine("")
      //   setSteps("")
      // })  
    
    }

          
    

  return <>
    <div className="form-container">
  <form id='addRecipe-form' onSubmit={handleSubmit}>

    <label>Recipe name</label>
    <input type="text" onChange ={handleName}
     value={recipeName} id="recipeName" placeholder="Recipe name.."/>

    <label>Image URL</label>
    <input type="text"  onChange ={handleUrl}
    value={imgUrl} id="imageUrl" placeholder="Image URL here"/>


    <select value={cuisine} onChange={handleCuisine} >
      <option>Select cuisine</option>
      <option>American</option>
      <option>Global</option>
      <option>Cuisine</option>
      <option>Italian</option>
      <option>Vegetarian</option>
      <option>Asian</option>
      <option>Mexican</option>
    </select>

    <label>Steps</label>
    <textarea id="steps"  onChange ={handleSteps}
    value={steps} placeholder="Describe the steps of the recipe.." style={{height:"200px"}}></textarea>
    <div> <input type="submit" value="Submit" class="btn btn-primary" data-mdb-toggle="modal" data-mdb-target="#exampleModal"/>
    <Link to="/recipes" id='myButton'>See recipes</Link>{errors?errors.map((err) => (
          <p id="error"key={err}>{err}</p>
        )):""}
    <div>
    
    </div>
    </div>
    
    
   

  </form>
  
</div> 

  </>
}
