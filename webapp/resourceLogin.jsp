<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        
        <title>Resource Login Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style2.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    </head>
    <body>
        <div class="container">
          
            <div class="clr"></div>
            <header style="height: 84px; ">
            
                <h1><span style="color:#ee42f4">Signin to Enter </span><span>(: if you are a valid Resoure :)</span></h1>
            </header>
            
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <h4 style="color: red; margin-left: 15px">${msg}</h4>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="resLogin.do"  method="post"  > 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Your email or username </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="myusername or mymail@mail.com"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">Keep me logged in</label>
								</p>
                                <p class="login button"> 
                                    <input type="submit" value="Login" /> 
								</p>
                                <p class="change_link" style="height: 98px; ">
									Forgot password ?<br/>
									Check Registered Email or
									<a href="#toregister" class="to_register">Contact Admin</a>
									<br/>
								</p>
                            </form>
                        </div>

                        <div id="register" class="animate form">
                            <form  action="mysuperJAva" method="post" autocomplete="on"> 
                                <h1> Sign up </h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Your username</label>
                                    <input id="usernamesignup" name="usernamesignup" required="required" type="text" placeholder="mdikbal99" />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" > Your email</label>
                                    <input id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mdtoufiqueikbal@mail.com"/> 
                                </p>
                                <p> 
                                    <label for="usernamesignup" class="youmail" data-icon="e">Tell Admin About Your Problem </label>
                                    <input id="text" name="usernamesignup" required="required" type="password" placeholder="30 word max"/>
                                </p>
                               
                                <p class="signin button"> 
									<input type="submit" value="Contact Toufique" style="width: 238px; "/> 
								</p>
								A reply mail will be sended to your registered email <br/>
								after contact Toufique !!<br/>
								As of now toufique(me) is only one Admin.
								
                                <p class="change_link">  
									<!-- DHGFJAKH -->
									
									<a href="#tologin" class="to_register"> Go and log in </a>
								</p>
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>