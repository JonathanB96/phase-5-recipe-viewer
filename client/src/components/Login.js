import React, {useState}from 'react'


export default function Login({onLogin}) {

  const[username, setUsername]=useState('')
  const[password, setPassword]=useState('')
  const [errors, setErrors] = useState([])  

  function handleUsername(e){
    setUsername(e.target.value)
    
  }

  function handlePsw(e){
    setPassword(e.target.value)    
  }  
  
  function handleSubmit(e) {
    e.preventDefault();
    
    fetch("/login", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ username, password}),
    }).then((r) => {
           
      if (r.ok) {
        r.json().then((user) => onLogin(user));
        console.log("logged in!")
      } else {
        r.json().then((err) => setErrors(err.errors));
      }
    });
  }

  return<>
   <form onSubmit={handleSubmit} className="form-container">
    <div className="form-container">
    <h1>Login</h1>
   
    <hr/>

    <label><b>Username</b></label>
    <input type="text" value={username} onChange={handleUsername}
     placeholder="Enter Username"required/>

    <label><b>Password</b></label>
    <input type="password" value={password} onChange={handlePsw}
     placeholder="Enter Password" required className='psw'/>

    <div className="clearfix">
      
      <button type="submit" className="signupbtn">Login</button>
      <button type="button" className="cancelbtn">Cancel</button>
      <div>
        {errors.map((err) => (
          <p id="error"key={err}>{err}</p>
        ))}
      </div>
    </div>
  </div>
</form>  
  
  </>
}
