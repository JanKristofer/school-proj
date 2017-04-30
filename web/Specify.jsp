<%-- 
    Document   : Specify
    Created on : 05 16, 16, 8:28:47 PM
    Author     : Jan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Phd</title>
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
h3{
    font-family: 'Ubuntu', sans-serif;  
     

}
p{
    font-family: 'Ubuntu', sans-serif;
    margin-right: 5cm;
    
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

.buttonToLink {
     background:none!important;
     border:none; 
     padding:0!important;
     font: inherit;
     /*border is optional*/
      font-family: 'Ubuntu', sans-serif;
    color: #5353c6;
     cursor: pointer;
}


</style>
    </head>
    <body>
         <form method="post"  action ="searchWord">
                 
             <div class="leftside"> <a href="index.html" target="_self">   <img  class="sizes" src="littlephd.jpg" alt=""/></a> </div>
             <div class ="gitnigga"><input class="se" type="text" name="word" value="" placeholder="search" /> 
            &nbsp; <input class="button" type="submit" value="Go" /></div>
         </form>
            
             <div class="rightside">
           
            <a href="Add.jsp"> <button class="button">Add word</button></a>
             <a href="Help.html" ><button class="button">Contact us</button></a></div>
        
        <div class="topp" ><hr class ="style14"></div>    <br>
         <center class="topp">
        <h1>   <%=
            session.getAttribute("w") 
        %>
        </h1>
        </center>
         <div class="wordsAlign">
        <p> 
            Part of Speech: <%= session.getAttribute("type") %>
            <br>
            Definition:
        <%=
            session.getAttribute("def") 
        %>
      
        </p>
        </div>
    </body>
</html>
