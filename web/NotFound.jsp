<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Not</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <style>

      html, body {
    max-width: 100%;
    overflow-x: hidden;
}
.sizes{
    
    width: 150px;
    height: 100px;
    
}

hr.style14 { 
  border: 0; 
  height: 1px; 
  background-image: -webkit-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
  background-image: -moz-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
  background-image: -ms-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
  background-image: -o-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0); 
  
}

.leftside{
    position: relative;
    left: 20px;
    top:-10px;
}
.gitnigga{
    
     position: relative;
    
     left: 200px;
    top:-70px;
      width: 1000px;
}

.se {
                padding:8px 15px;
                background:rgba(50, 50, 50, 0.2);
                border:0px solid #dbdbdb;
                  width: 300px;
                   border-radius: 5px;
}
.center {
    margin: auto;
    width: 60%;
    border: 3px solid #73AD21;
    padding: 10px;
}
.button {
                position:relative;
                padding:6px 15px;
                left:-8px;
                border:2px solid #207cca;
                background-color:#207cca;
                color:#fafafa;
                border-radius: 5px;
}
.button:hover  {
                background-color:#fafafa;
                color:#207cca;
}
.buttonLink{
     position:relative;
                padding:6px 15px;
                left:-8px;
                border:2px solid #207cca;
                background-color:#207cca;
                color:#fafafa;
                border-radius: 5px;
     text-decoration: none;
}
.buttonLink:hover  {
                background-color:#fafafa;
                color:#207cca;
}
h1{
    font-family: 'Ubuntu', sans-serif;
}

.rightside{
    position:relative;
    left: 1050px;
    top: -100px;
    
}
.topp{
    position:relative;
    top: -80px;
}
.wordsAlign{
    position:relative;
    top: -80px;
    left: 200px;
      width: 1000px;  
    overflow: hidden;
  text-align: justify;
 
}

</style>
    </head>
    <body>
         <form  method="post" action ="searchWord">
                 
             <div class="leftside"> <a href="index.html" target="_self">   <img  class="sizes" src="littlephd.jpg" alt=""/></a> </div>
             <div class ="gitnigga"><input class="se" type="text" name="word" value="" placeholder="search" /> 
            &nbsp; <input class="button" type="submit" value="Go" /></div>
         </form>
            
             <div class="rightside">
           
            <a href="Add.jsp"> <button class="button">Add word</button></a>
             <a href="Help.html" ><button class="button">Contact us</button></a></div>
       
        <div class="topp" ><hr class ="style14"></div> 
        
      
       <% String neg = (String)(request.getAttribute("word")); %> 
    <center>
        <h1><%= neg %> not found <br>):</h1>
        <br>
    </center>
       
       
    </body>
</html>
