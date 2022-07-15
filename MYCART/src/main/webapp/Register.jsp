<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
<title>MyCart:Register</title>
<%@include file="common_components/common_links.jsp" %>
</head>
<body>
<%@include file="common_components/navbar.jsp" %>
<div class="container" id="container">
            <div class="mycard" id="register-card">
           
                <div class="row" id="row">
                 <div class="col-md-2"></div>
                        <div class="col-md-6 ">
                                        <div class="myLeftCtn">
                           
                                              <form autocomplete="off" action="RegisterServlet"  method="post" class="my form text-center" id="myregisterform">
                                                    <header>Create your account</header>
                                                    <div class="form-group">
                                                    <i class="fas fa-user"> </i>
                                                    <input name="u_name" class="myInput"    type="text"  placeholder="username"  id="username" >
                                                    <p id="pname"></p>
                                                     </div>
                                                       <div class="form-group">
                                                    <i class="fas fa-envelope"> </i>
                                                    <input name="u_email"  class="myInput"    type="email"  placeholder="Email"  id="email" >
                                                    <p id="pmail"></p>
                                                     </div>
                                                    <div class="form-group">
                                                    <i class="fas fa-lock"> </i>
                                                    <input  name="u_password"  class="myInput"    type="password"  placeholder="password"  id="password">
                                                   <p id="ppass"></p>
                                                     </div>
                                                      <div class="form-group">
                                                    <i class="fa fa-phone-square"> </i>
                                                    <input  name="u_phone"  class="myInput"    type="text"  placeholder="phonenumber"  id="phone" >
                                                    <p id="pphone"></p>
                                                     </div>
                                                      <div class="form-group">
                                                    <i class="fas fa-home"></i>
                                                    <input  name="u_address"  class="myInput"   type="text"  placeholder="Address"  id="address" >
                                                     <p id="paddress"></p>
                                                     </div>
                                                    <div class="form-group">
                                                   <label>
                                                    <input id="check_1" name="check_1" type="checkbox" >
                                                    <small>I read  and agree to Terms and Conditions</small>
                                                     </label>
                                                       </div>
                                                     <input  type="submit" class="butt" value="CREATE ACCOUNT" >
                                                      <input type="reset" class="buttreset " value="RESET">
                                              </form>
                                               <div id="spin" style="display:none;" class="container text-center"> <span class="fa fa-refresh fa-4x	 fa-spin"></span><h4><i>Please Wait....</i></h4></div>
												  
                                        </div>
                        </div>
                        <div class="col-md-4">
                                <div class="myRightCtn">
                                   <div class="box"><header>Hello there!!!</header>
                                   <p>Nepal, formerly the Federal Democratic Republic of Nepal,
                                    is a landlocked country in South Asia. It is mainly situated in the Himalayas, 
                                    but also includes parts of the Indo-Gangetic Plain, bordering ...
                                   </p>
                                   <input type="button" class="butt_out" value="Learn more">
                                   </div>
                                </div>
                        </div>
                </div>
            </div>
        </div>
        <!--  validation-->
         <script>
          const form=document.getElementById('myregisterform');
            error=false;
            form.addEventListener('submit',e=>{    //action,//
               validateForm();
               console.log(error)
               if(error){
                   e.preventDefault();
               }
               error=false;
            })
        function validateForm(){
            var uname=document.getElementById("username").value;
            var ugmail=document.getElementById("email").value;
            const upass=document.getElementById("password").value;
            var number=document.getElementById("phone").value;
            var regxuname=/[a-z A-Z 0-1]*[$]/;
            if(uname==""){
                document.getElementById('pname').innerText="Please fill out this field"; 
                document.getElementById('pname').style.color = "red";
                document.getElementsByTagName('input')[0].style.borderColor="red";
                error=true;
                // return false;
            }
            else if((!regxuname.test(uname.value)) && (uname.length<=5)){
            	  document.getElementById('p1').innerText="your name must be atleast 5 letter"; 
                  document.getElementById('p1').style.color = "red";
                  document.getElementsByTagName('input')[0].style.borderColor="red";
                  error=true;
            }
            var regexemail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            if(ugmail==""){
              document.getElementById('ugmail').innerText="provide the mail";
                document.getElementById('ugmail').style.color = "red";
                document.getElementsByTagName(' input')[1].style.borderColor="red";
                error=true;
            } 
            else if(!regxemail.test(ugmail.value)){
            	   document.getElementById('ugmail').innerText="provide the valid mail";
                   document.getElementById('ugmail').style.color = "red";
                   document.getElementsByTagName('input')[1].style.borderColor="red";
                error=true;
            }
            var regxpass=/^[a-z A-Z 0-1]*[$]/;
            if(upass==""){
            	  document.getElementById('ppass').innerText="Please fill out this field"; 
                  document.getElementById('ppass').style.color = "red";
                  document.getElementsByTagName('input')[2].style.borderColor="red";
               error=true;
            }
            else if((!regxpass.test(upass.value))&& (upass.length>=5 && upass.length<=8)){
                document.getElementById('ppass').innerText="your password must be atleast 5 and atmost 8"; 
                document.getElementById('ppass').style.color = "red";
                document.getElementsByTagName('input')[2].style.borderColor="red";
                error=true;
            }
            var regxnumber=/^[98][0-9]{8}$/;
            if(number==""){
            	  document.getElementById('pphone').innerText="please provide your phone number "; 
                  document.getElementById('pphone').style.color = "red";
                  document.getElementsByTagName('input')[3].style.borderColor="red";
                  error=true;
            }
            else if(!regxnumber.test(number.value)) {
            	 document.getElementById('pphone').innerText="please provide valid  phone number"; 
                 document.getElementById('pphone').style.color = "red";
                 document.getElementsByTagName('input')[3].style.borderColor="red";
                 error=true;
            }
           error=true;
        }
   </script>
   <!--this is a comment
 <script >	
				$(document).ready(function(){
				   console.log("loaded")
					$("form").submit(function(event){
						event.preventDefault();
						let data=new FormData(this);
						$(".butt").hide();
						$(".buttreset").hide();
						$("#spin").show();
						//send to register servlet
						 $.ajax({
							   url:"RegisterServlet",
							   type:'POST',
						       data:  data	,
						       success: function (data, textStatus,jqHXR) {
						    	   console.log(data);
						    	   $(".submit-btn").show();
						    		$(".buttreset").show();
									$("#spin").hide();
									
									swal({
										  title: "Registration Successfully!!!",
										  text:  "Login and enjoy your shopping",
										  icon: "success",
										  successMode: true,
										})
										.then((value) => {
										window.location="Login.jsp";
										});
									
						       },
						       error: function (jqHXR,textStatus, errorThrown) {
						    	   console.log(jqHXR);
						    	   $(".butt").show();
						    	   $(".buttreset").show();
									$("#spin").hide();
						    	   swal("SomeThing went wrong....... try again.");
						    	     
						       },
						    	   processData:false ,
						    	   contentType:false
						   });
				})
				})
				</script>
-->
</body>
</html>