<%@page import="java.util.List"%>
<%@page import="Model.Notice"%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/employee.css">
        <link rel="stylesheet" type="text/css" href="css/applyleave.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

    </head>

    <body>
        
      <script>
          function myFunction() 
          {
                var x = document.getElementById("myLinks");
                if (x.style.display === "block") 
                    {
                        x.style.display = "none";
                    } 
                
                else 
                    {
                        x.style.display = "block";
                    }
          }
        </script>
        
        
        
    

<div class="topnav">
  
    <a href="javascript:void(0);" class="icon" onclick="myFunction()">
        <i class="fa fa-bars"></i>
    
            <div id="myLinks">
                <a href="Employee.jsp">MyInfo</a>
                <a href="#" onclick="vAllAttdBtn()">Attendance</a>
                <a href="#" onclick="vAllSal()">Salary</a>
                <a href="ApplyLeave.jsp">Apply leave</a>
                <a href="home.html">Logout</a>
            </div>
            <script>
                    
                    //view all emp
                    var req = new XMLHttpRequest();
                    function vAllSal()
                    {   
                  
                        var url="viewAllSal.jsp"; 

                        try  
                        {  
                            req.onreadystatechange=getAllSal;  
                            req.open("GET",url,true);  
                            req.send();  
                        }  
                        catch(e)  
                        {  
                        alert("Unable to connect to server");  
                        }  
                    }  

                    function getAllSal(){  
                    if(req.readyState==4){  
                    var val=req.responseText;  
                    document.getElementById('sal').innerHTML=val;  
                    }  
                    }
              </script>
              <script>
                    
                    //view all attd
                    var req = new XMLHttpRequest();
                    function vAllAttdBtn()
                    {   
                        var url="viewAllAttendance.jsp"; 

                        try  
                        {  
                            req.onreadystatechange=getAllAttdInfo;  
                            req.open("GET",url,true);  
                            req.send();  
                        }  
                        catch(e)  
                        {  
                        alert("Unable to connect to server");  
                        }  
                    }  

                    function getAllAttdInfo(){  
                    if(req.readyState==4){  
                    var val=req.responseText;  
                    document.getElementById('sal').innerHTML=val;  
                    }  
                    }
                    </script>
            <div class="signin">
            
               <span class="button">ATTENDANCE: </span> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <label class="switch">
                    <input type="checkbox" onclick="shAllAttd()">
                    <span class="slider round"></span>
                </label>
            </div>
    </a>
</div>
        
<div class="main">
    <div class="side">     
        <div class="box1">
    <img src="image/driver1.jpg" width="280" height="280">        
    
        </div>
        
        
        <div class="box2">
        
           <p > <span ><% String name = (String)request.getSession().getAttribute("name");%>
                <%=name%></span>
           </p>
            
            <% String title = (String)request.getSession().getAttribute("title");%>
                <%=title%>
        </div>
        
         <div class="box3">
        
             <div class="header" id="em">
                NOTICES
             </div>
             <ul>
               <%
                List<Notice> record = (List<Notice>)request.getAttribute("notice");
                  
                if( record == null )
                {
                %>
                    <li> No Notice</li>
                <%
                }
                else
                {
                    for( Notice red : record )
                    {
                %>
                    <li><%=red.getNotice()%></li>
                    <%  }
                }
                %>
             </ul>
             
        </div>
</div>
        

<div class="side2">
    
    <div class="top">
    
        <div class="top1" >
            <div class="header">
                PERSONAL DETAILS
             </div>
            <h3 style="text-align: left;padding-left: 20px;">
                NAME :
                <%=name%><br>
                TITLE : 
                <%=title%><br>  
                    Email : <% String email = (String)request.getSession().getAttribute("email");%>
                    <%=email%><br>
                PHONE : <% String ph = (String)request.getSession().getAttribute("pnumber");%>
                <%=ph%>
            </h3>
            
        </div>
        <script>
            var val = document.getElementById('em').value;
            console.log(val);
            //ATTENDANCE    
            function shAllAttd()  
            {  
//                var v=document.getElementById('em').value;
//                console.log(v);
                var url="increaseAtt.jsp?"; 

                try  
                {  
                    req.onreadystatechange=getAttdInfo;  
                    req.open("GET",url,true);  
                    req.send();  
                }  
                catch(e)  
                {  
                alert("Unable to connect to server");  
                }  
            }  

            function getAttdInfo(){  
            if(req.readyState==4){  
            var val=req.responseText;  
                    document.getElementById('sal').innerHTML=val;  
            }  
            }
    </script>
            
            
        <div class="top2">
                <div class="header">
                    ORGANIZATIONAL DETAILS
                </div>
            <p>
            Human Resource Management (HRM) is the term used to describe formal systems devised for the management of people within an organization. The responsibilities of a human resource manager fall
            </p>
        </div>
    </div>
    
    <div class="display">
            <div class="header">
                    YOUR REQUESTS
            </div>
        <div id="sal"></div>
    </div>
</div>

</div>     
        <footer>
            <div class="info">
                <div class="calls">
                    <i class="fa fa-phone" aria-hidden="true">&nbsp;&nbsp;&nbsp;&nbsp;CALL US</i> 
                    <p>Tel. 987-654-3210 | Fax: 123-456-7890 </p>
                </div>
                <div class="hrline1"></div>
                <div class="emails">
                    <i class="fa fa-envelope-o" aria-hidden="true">&nbsp;&nbsp;&nbsp;&nbsp;EMAIL US</i>
                    <p>cuhp@chitkarauniversity.edu.in</p>
                </div>
                <div class="hrline2"></div>
                <div class="works">
                    <i class="fa fa-clock-o" aria-hidden="true">&nbsp;&nbsp;&nbsp;&nbsp;WORKING HOURS</i>
                    <p>Mon-Sat: 6am - 6pm</p>
                </div>
            </div>
            <div style="clear: both;"></div>
            
            <div class="contacts">
                <div id="cont">
                    <h1 style="font-family:Carter One; color: white;">Contact Us</h1>
                    <p style="font-family: Carter One; color: white;">Contact us for more information</p>
                    
                    <form method="post" name="cf">
                        <input type="text"value="Name" name="name">
                        <input type="email" value="Email" name="email">
                        <input type="text" value="Subject" name="sub">
                        <input type="text" value="Message" name="message">
                        <input type="submit" value="Submit" style=" margin-left: 330px">    
                    </form>
                </div>
                <div class="hrline3"></div>
                <div id="datess">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3424.3454335201204!2d76.8701945146144!3d30.876996285717514!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390f8bcf4ce3b76b%3A0x21b1b0a655f62ff!2sChitkara+University+%2C+Baddi!5e0!3m2!1sen!2snl!4v1550514953962" width="500" height="415" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
            <div class="infor">
                <div class="info1 animated swing">
                    <h3>OVER 10 YEARS EXPERIENCE</h3>
                    <hr color="white" style="margin: -10px 0px 35px 0px;" height="2">
                    <p style="margin-top: -10px;">Welcome To Chitkara University Himachal Pradesh. Enjoy The Ride of Chitkara.</p>
                    <div class="icons">
                        <img src="image/fb.jpeg" style=" height:25px; width:25px; margin-top: 7px;">
                        <img src="image/tw.jpeg" style=" height:25px; width:25px;margin-top: 7px;">
                        <img src="image/yt.jpeg" style=" height:25px; width:25px;margin-top: 7px;">
                        <img src="image/ig.jpeg" style=" height:25px; width:25px;margin-top: 7px;">
                        <img src="image/gm.jpeg" style=" height:25px; width:25px;margin-top: 7px;">
                        <img src="image/pi.jpeg" style=" height:25px; width:25px;margin-top: 7px;">
                    </div>
                </div>
                <div class="info2 animated swing">
                    <h3>OUR SERVICES</h3>
                    <hr color="white" style="margin: -10px 0px 35px 0px;" height="2">
                    <p style="margin-top:-10px;">-Providing Quality Service </p>
                    <p>-Providing Overall Development</p>
                    <p>-Providing Soft Skill</p>
                    <p>-Providing Knowledge</p>
                    <p>-Providing Good environment</p>
                </div>
                
                <div class="info3 animated swing">
                    <h3>VISIT US</h3>
                    <hr color="white" style="margin: -10px 0px 35px 0px;" height="2">
                    <p>Chitkara University</p>
                    <p>Barotiwala,Atal Nagar</p>
                    <p>Himachal Pradesh</p>
                </div>
            </div>
            <div id="copyright">
                <p id="p1">2019</p>
                <i class="fa fa-copyright" aria-hidden="true"></i>
                <p id="p2">Copyright - All Rights Reserved.</p>
            </div>
        </footer>
        
    
    </body>
</html>