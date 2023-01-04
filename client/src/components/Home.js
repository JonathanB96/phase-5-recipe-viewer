import React, {useContext} from 'react'
import { UserContext } from './user'
import {Link} from 'react-router-dom'





export default function Home() {
    
    const { user, setUser } = useContext(UserContext);
    console.log(user)
   
     return(<div className='home'>
      {user?<div className='main'> <h1 className='main-msg'>Welcome back {user.username} </h1><Link to="/recipes" className='myButton'>See all recipes</Link></div>
    :<Link to="/recipes" className='myButton'>See all recipes</Link>}
     
      <div className='main'>       
        
       
        <div className="main-container">
        {/* {user? null:<Link to="/recipes" className='myButton'>See all recipes</Link>} */}


              <div className="parallax-1"> 
                  
              </div>
              <div className="text-1">
                  <h1>All your quick recipes in one place</h1>
              </div>

              </div>
              <div className="parallax-3"></div>
              <div className="parallax-4"></div>
              <div className=""></div>
          </div>

      
    
    
      </div>
     
             
      
     
    
     )
}
