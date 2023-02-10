import React,{useEffect, useContext, useState} from 'react'
import { UserContext } from './user'
import '../styles/Tips.css'
export default function Tips() {
    const { user, setUser } = useContext(UserContext);
    const [recipes, setRecipes]= useState([])
    useEffect(() => {
        fetch(`/recipes/${user.id}`)
          .then((r) => r.json())
          .then((recipes)=>{
            setRecipes(recipes)
            console.log(recipes)
          
          });
      }, []);
      function download(){

        fetch("/pages/download")
        .then((r) => {
         return r.blob()
        })
        .then((data)=>{ 
         let a = document.createElement("a")
        a.href = window.URL.createObjectURL(data)
        a.download = "9_cooking_tips"
        a.click()       
      })
      }

  return <>
    <div class='tip-container'>
      
     
      <div className='main'>
        
       
        
       
        <div className="main-container">

              <div class="div-1"> 
                  
              </div>
              <div className="text-1">
                  <h1>Cooking tips for beginners</h1>
                  <div className="text-2">
              If you’re just starting out in the kitchen, you might not know where to begin. But never fear — we’re here to help you along! Simple practices like making notes while you cook or substituting an ingredient when necessary can make a considerable difference. </div>
              
                  <button id="myButton" onClick={download}>Download PDF file</button> <br/>
                  </div>

              </div>
              <div className="div-3"></div>
              <div className="parallax-4"></div>
              <div className=""></div>
          </div>

      
    
    
      </div>
     
</>
}
