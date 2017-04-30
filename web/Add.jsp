<%-- 
    Document   : Add
    Created on : 05 15, 16, 1:05:07 AM
    Author     : Jan
--%>
<html>
    <head>
        <title>Add Word</title>
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
    top:-66px;
      width: 900px;
}

.se {
                padding:8px 15px;
                background:rgba(50, 50, 50, 0.2);
                border:0px solid #dbdbdb;
                  width: 330px;
                   border-radius: 5px;
}
.se1{
                padding:8px 15px;
                background:rgba(192,192,192,0.3);
                border:0px solid #dbdbdb;
                  width: 330px;
                   border-radius: 5px;
                   font-family: 'Ubuntu', sans-serif;
                   color: #ffffff;
                
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
    font-weight: lighter;
    letter-spacing: -2px;
}
.fontz{
    
    font-family: 'Ubuntu', sans-serif;

}
.rightside{
    position:relative;
     left: 1050px;
    top: -112px;
    
}
.topp{
    position:relative;
    top: -92px;
}
.wordsAlign{
    position:relative;
    top: -80px;
    left: 200px;
      width: 1000px;  
    overflow: hidden;
  text-align: justify;
 
}.button1 {
                position:relative;
                padding:6px 15px;
                left:-8px;
                border:2px solid #4dffa6;
                background-color:#4dffa6;
                color:#fafafa;
                border-radius: 5px;
}
.button1:hover  {
                background-color:#fafafa;
                color:#4dffa6;
}
textarea {
     overflow: auto;
  resize: none;
}
.upp{
      position:relative;
    top: -30px;
    
} 
.buttonActive{
       background-color:#fafafa;
                color:#207cca;
     position:relative;
                padding:6px 15px;
                left:-8px;
                border:2px solid #207cca;
               
                border-radius: 5px;
}

.style-3 input[type="text"] {
 padding: 10px;
  height: 30px;
    border: 3px solid #EBE6E2;
    border-radius: 5px;
    -webkit-transition: all 0.3s ease-out;
    -moz-transition: all 0.3s ease-out;
    -ms-transition: all 0.3s ease-out;
    -o-transition: all 0.3s ease-out;
    transition: all 0.3s ease-out;
    width: 270px;
}
textArea{
   padding: 10px;
   height: 70px;
    border: 3px solid #EBE6E2;
    border-radius: 5px;
    -webkit-transition: all 0.3s ease-out;
    -moz-transition: all 0.3s ease-out;
    -ms-transition: all 0.3s ease-out;
    -o-transition: all 0.3s ease-out;
    transition: all 0.3s ease-out;
    width: 270px; 
     font-family: 'Ubuntu', sans-serif;   
}
.style-3 input[type="text"]:focus {
   border-color: #BBB;
   outline:none;
    
}
textArea:focus {
    border-color: #BBB;
    outline: none;
}
</style>
    </head>
    <body>
         <form method="post" action ="searchWord">
                 
             <div class="leftside"> <a href="index.html" target="_self">   <img  class="sizes" src="littlephd.jpg" alt=""/></a> </div>
             <div class ="gitnigga"><input class="se" type="text" name="word" value="" placeholder="search" /> 
            &nbsp; <input class="button" type="submit" value="Go" /></div>
         </form>
            
             <div class="rightside">
           
                 <a href="Add.jsp"> <button class="buttonActive">Add word</button></a>
             <a href="Help.html" ><button class="button">Contact us</button></a>
             </div>
       
        <div class="topp" ><hr class ="style14"></div> 
    <center>
        <form method="post" action ="AddWord">
            <div class = "upp">
                <table class="style-3"  border="0">
            <h1>Add word </h1>
            <tbody>
                <tr>
                   
                   <td><input required placeholder="Word"  type="text" name="w" value="" /> </td>
                </tr>
                <br>
                <tr>
                 
                    <td><input  required  placeholder="Part of speech" type="text" name="type" value="" /> </td>
                </tr>
                <br>
                <tr> 
                    <td><textarea  required placeholder="Definition" name="def" rows="4" cols="20"></textarea> </td>
                </tr>
                <br>
                <tr>
                    <td>&nbsp; &nbsp;  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<input class="button" type="submit" value="Submit" /> <input class="button1" type="reset" value="Clear" /> </td>
                    
                </tr>
            </tbody>
        </table>
            </div>
        </form>

    </center>
    </body>
</html>
