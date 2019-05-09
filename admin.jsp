<html>
    <head>
        <title>My Admin Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/admin.css">
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script>
    </head>
    
    <body>
        <div class="mybody">
            <div class="main-menu">
                <nav>
                    <button class="btn1" onclick="displayPanel(0,'#E02323')">
                        <i class="fa fa-plus-square" aria-hidden="true"></i><span class="nav-text">Add Employee</span>
                    </button>
                    <button class="btn1" onclick="displayPanel(1,'#1C4F6E')">
                        <i class="fa fa-trash-o" aria-hidden="true"></i><span class="nav-text">Delete Employee</span>
                    </button>
                    <button class="btn1" onclick="displayPanel(2,'#E02323')">
                        <i class="fa fa-upload" aria-hidden="true"></i><span class="nav-text">Update</span>
                    </button>
                    <button class="btn1" onclick="displayPanel(3,'#1C4F6E')">
                        <i class="fa fa-eye" aria-hidden="true"></i><span class="nav-text">View</span>
                    </button>
                    <button class="btn1" onclick="displayPanel(4,'#E02323')">
                        <i class="fa fa-bell" aria-hidden="true"></i><span class="nav-text">Notice</span>
                    </button>
                    <button class="btn1" onclick="displayPanel(5,'#1C4F6E')">
                        <i class="fa fa-calculator" aria-hidden="true"></i><span class="nav-text">Salary Calculate</span>
                    </button>
                    <button class="btn1" onclick="displayPanel(6,'#E02323')">
                        <i class="fa fa-envelope" aria-hidden="true"></i><span class="nav-text">Leave Approval</span>
                    </button>
                    
                    <a href="home.html" class="logout"><i class="fa fa-power-off" aria-hidden="true"></i><span class="nav-text">Logout</span></a>
                </nav>
            </div>
            
<!--            Add Employee-->
            <div class="main-menu-1">
                <div class="ctEmp">
                    <button onclick="showCreate(0,'#E02323')">Create Employee's</button>
                    <button onclick="showCreate(1,'#1C4F6E')">Create Salary</button>
                    <button onclick="showCreate(2,'#E02323')">Create Attendance</button>
                </div>
                <div class="ctPanel">
                    <div id="addemp">
                        <form action="HRSignupServlet" method="post">
                            Employee Name :
                            <input type="text" name="nm" placeholder="Employee Name"><br>
                            Designation :
                            <input type="text" name="desg" placeholder="Designation"><br>
                            Email :
                            <input type="email" name="mail" placeholder="Email"><br>
                            Gender : 
                            <input type="radio" name="gender" value="male" >&nbsp;&nbsp;Male
                            <input type="radio" name="gender" value="female">&nbsp;&nbsp;Female
                            <input type="radio" name="gender" value="other">&nbsp;&nbsp;Other<br>
                            Contact :
                            <input type="text" name="cont" placeholder="Contact Number"><br>
                            Password :
                            <input type="text" name="pwd" placeholder="Password"><br>
                            Address :
                            <input type="text" name="addr" placeholder="Address"><br>
                            Account Type :
                            <select name="type">
                                <option value="employee">Employee</option>
                                <option value="humanresource">Human Resource</option>
                            </select><br>
                            <input type="submit" value="CREATE" name="sb">
                        </form>
                    </div>
                </div>
                
                <div class="ctPanel">
                    <div id="addSal">
                        <form action="SalaryServlet" method="post">
                            Employee Name :
                            <input type="text" name="nm" placeholder="Employee Name"><br>
                            Email :
                            <input type="email" name="mail" placeholder="Email"><br>
                            Designation :
                            <input type="text" name="desg" placeholder="Designation"><br>
                            Basic :
                            <input type="text" name="basic" placeholder="Employee's Basic"><br>
                            <input type="submit" value="CREATE" name="sb">
                        </form>
                    </div>
                </div>
                <div class="ctPanel">
                    <div id="addAttd">
                        <form action="AttendanceServlet" method="post">
                            Employee Name :
                            <input type="text" name="nm" placeholder="Employee Name"><br>
                            Email :
                            <input type="email" name="mail" placeholder="Email"><br>
                            Total Days :
                            <input type="text" name="tday" placeholder="Total Days"><br>
                            Present :
                            <input type="text" name="pday" placeholder="Present Days"><br>
                            <input type="submit" value="CREATE" name="sb">
                        </form>
                    </div>
                </div>
            </div>
            
<!--           Delete Employee -->
            <div class="main-menu-1">
                <div id="delEmp">
                    <form action="DeleteServlet" method="post">
                        Email : <br>
                        <input type="email" name="mail" placeholder="Email"><br>
                        <input type="submit" value="DELETE">
                    </form>
                </div>
            </div>
            
<!--            update-->
            <div class="main-menu-1">
                <div class="upEmp">
                    <button onclick="showUpdate(0,'#E02323')">Update Employee's</button>
                    <button onclick="showUpdate(1,'#1C4F6E')">Update Salary</button>
                </div>
                <div class="upPanel">
                    <div id="addemp">
                        <form action="updateEmp" method="post">
                            Employee Name :
                            <input type="text" name="nm" placeholder="Employee Name"><br>
                            Designation :
                            <input type="text" name="desg" placeholder="Designation"><br>
                            Email :
                            <input type="email" name="mail" placeholder="Email"><br>
                            Gender : 
                            <input type="radio" name="gender" value="male" >&nbsp;&nbsp;Male
                            <input type="radio" name="gender" value="female">&nbsp;&nbsp;Female
                            <input type="radio" name="gender" value="other">&nbsp;&nbsp;Other<br>
                            Contact :
                            <input type="text" name="cont" placeholder="Contact Number"><br>
                            Password :
                            <input type="text" name="pwd" placeholder="Password"><br>
                            Address :
                            <input type="text" name="addr" placeholder="Address"><br>
                            Account Type :
                            <select name="type">
                                <option value="employee">Employee</option>
                                <option value="humanresource">Human Resource</option>
                            </select><br>
                            <input type="submit" value="UPDATE" name="sb">
                        </form>
                    </div>
                </div>
                
                <div class="upPanel">
                    <div id="addSal">
                        <form action="updateSalaryServlet" method="post">
                            Employee Name :
                            <input type="text" name="nm" placeholder="Employee Name"><br>
                            Email :
                            <input type="email" name="mail" placeholder="Email"><br>
                            Designation :
                            <input type="text" name="desg" placeholder="Designation"><br>
                            Basic :
                            <input type="text" name="basic" placeholder="Employee's Basic"><br>
                            <input type="submit" value="UPDATE" name="sb">
                        </form>
                    </div>
                </div>
            </div>
            
<!--            view-->
            <div class="main-menu-1">
                <div class="viewEmp">
                    <button onclick="showView(0,'#E02323')">Employee Info</button>
                    <button onclick="showView(1,'#1C4F6E')">Salary Info</button>
                    <button onclick="showView(2,'#E02323')">Attendance Info</button>
                </div>
                
<!--                emp info-->
                <div class="viewPanel">
                    <div class="showEmp">
                        <div class="empBtn" id="ve" onclick="showEmpInfo(0,'#AAA4A4')"><p>View All Employee</p></div>
                        <div class="empBtn" id="se" onclick="showEmpInfo(1,'#1C4F6E')"><p>Search Employee</p></div>
                    </div>
                    
                    <div class="empPanel">
                        <div class="disAllEmp">
                            <button onclick="vAllEmpBtn()">Click Here To View All </button>
                        </div>
                        <div id="vAllEmp">
                        </div>
                    </div>
                    
                    <div class="empPanel">
                        <div class="disEmp">
                            <form name="eform">
                                <input type="text" name="mail" placeholder="Employee Email" onkeyup="shEmpBtn()">
                            </form>
                        </div>
                        <div id="shEmp"></div>
                    </div>
                </div>
                
                <script>
                    
                    //view all emp
                    var req = new XMLHttpRequest();
                    function vAllEmpBtn()
                    {   
                        var url="viewAllEmp.jsp"; 

                        try  
                        {  
                            req.onreadystatechange=getAllEmpInfo;  
                            req.open("GET",url,true);  
                            req.send();  
                        }  
                        catch(e)  
                        {  
                        alert("Unable to connect to server");  
                        }  
                    }  

                    function getAllEmpInfo(){  
                    if(req.readyState==4){  
                    var val=req.responseText;  
                    document.getElementById('vAllEmp').innerHTML=val;  
                    }  
                    }
                    
                    //search Emp
                    function shEmpBtn()  
                    {  
                        var v=document.eform.mail.value;  
                        var url="searchEmp.jsp?x="+v; 

                        try  
                        {  
                            req.onreadystatechange=getEmpInfo;  
                            req.open("GET",url,true);  
                            req.send();  
                        }  
                        catch(e)  
                        {  
                        alert("Unable to connect to server");  
                        }  
                    }  

                    function getEmpInfo(){  
                    if(req.readyState==4){  
                    var val=req.responseText;  
                    document.getElementById('shEmp').innerHTML=val;  
                    }  
                    }
                </script>
                
<!--                salary info-->
                <div class="viewPanel">
                    <div class="showSal">
                        <div class="salBtn" id="ve" onclick="showSalInfo(0,'#AAA4A4')"><p>View All Employee Salary</p></div>
                        <div class="salBtn" id="se" onclick="showSalInfo(1,'#1C4F6E')"><p>Search Employee Salary</p></div>
                    </div>
                    
                    <div class="salPanel">
                        <div class="disAllEmp">
                            <button onclick="vAllSalBtn()">Click Here To View All </button>
                        </div>
                        <div id="vAllSal">
                        </div>
                    </div>
                    
                    <div class="salPanel">
                        <div class="disEmp">
                            <form name="sform">
                                <input type="text" name="mail" placeholder="Employee Email" onkeyup="shAllSal()">
                            </form>
                        </div>
                        <div id="shSal"></div>
                    </div>
                </div>

                <script>
                    
                    //view all sal
                    var req = new XMLHttpRequest();
                    function vAllSalBtn()
                    {   
                        var url="viewAllSal.jsp"; 

                        try  
                        {  
                            req.onreadystatechange=getAllSalInfo;  
                            req.open("GET",url,true);  
                            req.send();  
                        }  
                        catch(e)  
                        {  
                        alert("Unable to connect to server");  
                        }  
                    }  

                    function getAllSalInfo(){  
                    if(req.readyState==4){  
                    var val=req.responseText;  
                    document.getElementById('vAllSal').innerHTML=val;  
                    }  
                    }
                    
                    //search sal
                    function shAllSal()  
                    {  
                        var v=document.sform.mail.value;  
                        var url="searchSal.jsp?x="+v; 

                        try  
                        {  
                            req.onreadystatechange=getSalInfo;  
                            req.open("GET",url,true);  
                            req.send();  
                        }  
                        catch(e)  
                        {  
                        alert("Unable to connect to server");  
                        }  
                    }  

                    function getSalInfo(){  
                    if(req.readyState==4){  
                    var val=req.responseText;  
                    document.getElementById('shSal').innerHTML=val;  
                    }  
                    }
                </script>

<!--                attendance info-->
                <div class="viewPanel">
                    <div class="showAttd">
                        <div class="attdBtn" id="ve" onclick="showAttdInfo(0,'#AAA4A4')"><p>View All Employee Attendance</p></div>
                        <div class="attdBtn" id="se" onclick="showAttdInfo(1,'#1C4F6E')"><p>Search Employee Attendance</p></div>
                    </div>  
                    
                    <div class="attdPanel">
                        <div class="disAllEmp">
                            <button onclick="vAllAttdBtn()">Click Here To View All </button>
                        </div>
                        <div id="vAllAttd">
                        </div>
                    </div>
                    
                    <div class="attdPanel">
                        <div class="disEmp">
                            <form name="aform">
                                <input type="text" name="mail" placeholder="Employee Email" onkeyup="shAllAttd()">
                            </form>
                        </div>
                        <div id="shAttd"></div>
                    </div>
                </div>
            </div>

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
                    document.getElementById('vAllAttd').innerHTML=val;  
                    }  
                    }
                    
                    //search attd
                    function shAllAttd()  
                    {  
                        var v=document.aform.mail.value;  
                        var url="searchAttendance.jsp?x="+v; 

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
                    document.getElementById('shAttd').innerHTML=val;  
                    }  
                    }
                </script>

<!--            notice-->
            <div class="main-menu-1">
                <div id="notice-div">
                    <form action="NoticeServlet" method="post">
                        Notice :<br>
<!--                        <input type="text" name="notices"><br>-->
                        <textarea name="notices"></textarea><br>
                        <input type="submit" name="sb" value="Submit">
                    </form>
                </div>
            </div>
            
<!--            salary calculate-->
            <div class="main-menu-1">
                <div class="salCal">
                    <div>
                        <button onclick="calSalary()">Calculate Salary</button>
                    </div>
                    <div id="vSalCal"></div>
                </div>
            </div>
            
            <script>
                var req = new XMLHttpRequest();
                function calSalary()
                {   
                    var url="SalaryCalculation.jsp"; 

                    try  
                    {  
                        req.onreadystatechange=getSC;  
                        req.open("GET",url,true);  
                        req.send();  
                    }  
                    catch(e)  
                    {  
                    alert("Unable to connect to server");  
                    }  
                }  

                function getSC(){  
                if(req.readyState==4){  
                var val=req.responseText;  
                document.getElementById('vSalCal').innerHTML=val;  
                }  
                }
            </script>

<!--            leave calculate-->
            <div class="main-menu-1">
            
            </div>
            
            <div class="dashboard">
                <div class="admin-info">
                    <img src="image/login.png">
                    
                    <div class="admin-details">
                        <p>
                             <% String email = (String)request.getSession().getAttribute("mail");%>
                             E-Mail : <%=email%>
                         </p>
                         <p>
                             <% String acctype = (String)request.getSession().getAttribute("type");%>
                             Account Type : <%=acctype%>
                         </p>
                        
                    </div>
                </div>
            </div>
        </div>
        <script src="js/admin.js"></script>
    </body>
</html>