<%-- 
    Document   : SearchRecord
    Created on : 05 19, 16, 9:44:51 PM
    Author     : Jan
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="Dao.MVC"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results</title>
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
    color: #5353c6;

}
p{
    font-family: 'Ubuntu', sans-serif;
     margin-right: 5cm;
    text-align-last: auto;
}    
table{
    
    width: 100%;
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
    overflow:  auto;
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
.newalign{
    width: 200px;
    
    
}
.buttonToLink:hover  {
                background-color:#fafafa;
                text-decoration:underline;
                color:#207cca;
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
     <div class ="wordsAlign" >  <h1 >Results</h1></div>
        
        <%
            int id;
            String w ,type,def;
        String word = (String)(request.getAttribute("word"));
                ResultSet records = MVC.DisplaySpecific(word, "Select  * from entries where word = ?");  
                if (!records.next()){
                    request.setAttribute("word", word);
            
                    request.getRequestDispatcher("/NotFound.jsp").forward(request, response);}
                if(records.isFirst() == records.isLast() ){
                  
                    w = records.getString("word");
                   id =  records.getInt("word_id");
                    type = records.getString("wordtype");
                    def = records.getString("definition");
                             %>
                             
                    <form method="post"  action ="SelectWord">         
                 <div class="wordsAlign">
                    <input type="hidden" name="Id" value="<%= id  %>" />
                     <input type="hidden" name="w" value="<%= w %>" />
                     <input type="hidden" name="def" value="<%= def %>" />
                     <input type="hidden" name="type" value="<%= type %>" />
                     <input class="buttonToLink" type="submit" value="<%=  w   %> (<%= type %>)" />
                   <p>Definition: <%= def %></p>
                   
                </div>
                   </form>
                <br>
                
                
                
                              <%
                    
                }
                else
                   
                   while (records.next()){
                     w = records.getString("word");
                   id =  records.getInt("word_id");
                    type = records.getString("wordtype");
                    def = records.getString("definition");
                       
                       %>    
          <form method="post"  action ="SelectWord">         
                 <div class="wordsAlign">
                      <input type="hidden" name="Id" value="<%= id  %>" />
                     <input type="hidden" name="w" value="<%= w %>" />
                     <input type="hidden" name="def" value="<%= def %>" />
                     <input type="hidden" name="type" value="<%= type %>" />
                    
                 
                   <table border="1">
                            <tbody>
                           <tr>
                                <td class="newalign" ><input class="buttonToLink" type="submit" value="<%=  w   %> (<%= type %>)" /></td>
                               <td><p>Definition: <%= def %></p>     </td>
                           </tr>
                       </tbody>
                   </table>
 </div>
                   </form>
                   
                
    
      <%   
}
       %>
       
       
    </body>
</html>
