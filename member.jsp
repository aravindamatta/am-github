<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>

<script type="text/javascript">
//var x = document.getElementById("myDIV");

	
		function calcTemp(n1,n2,n3,n4,n5){
			//alert (" calling....calcTemp");
			if(n2==1)	  
			{	if(n3==1)		{	n5= n1;					}
				else if(n3==2)	{	n5= n1-273.15;			}
				else if(n3==3)	{	n5=(n1*9/5 - 459.67);	}
				else if(n3==4)	{	n5= n1* 9/5;			}		}
			
			else if(n2==2){	
				if(n3==1)		{	n5= n1+273.15;			}
				else if(n3==2)	{	n5=n1;					}
				else if(n3==3)	{	n5=n1 * 9/5 + 32;		}
				else if(n3==4)	{	n5=n1*9/5+491.67;		}		}
			else if(n2==3){	
				if(n3==1)		{	n5=(n1+459.67)*5/9;		}
				else if(n3==2)	{	n5=(n1-32)*5/9;			}
				else if(n3==3)	{	n5=n1;					}
				else if(n3==4)	{	n5=(459.67+n1);			}		}
			else if(n2==4){	
				if(n3==1)		{	n5= n1*5/9;				}
				else if(n3==2)	{	n5 =n1*5/9-273.15;		}
				else if(n3==3)	{	n5= n1-459.67;			}
				else if(n3==4)	{	n5= n1;					}		}
			
				return n5;
		}
		function take_value(){
			var n1=document.forms["myform"]["ip"].value;
			var n2=document.forms["myform"]["InputUM"].value;
			var n3=document.forms["myform"]["TargetUM"].value;
			var n4=document.forms["myform"]["sres"].value;
			var n5 ="10";
			
			if(n1==null || n1==""){ alert ("Please enter a ip value");
			 return false;
			} else if(n2==0 ){ alert ("Please select a InputUM value");
			 return false;
			}else if(n3==0 ){ alert ("Please select a Target UM value");
			 return false;
			}else if(n4==null || n4=="" ){ alert ("Please Enter a student value");
			 return false;
			}else
				n5=calcTemp(n1,n2,n3,n4,n5);
			if(n5==n4){
			 document.getElementById("myDIV").innerHTML = "Correct";
			 }else if(n5!=n4)
			 {document.getElementById("myDIV").innerHTML = "InCorrect .Correct value is :"+n5;}
			 else 
				 document.getElementById("myDIV").innerHTML = "invalid";
						
		}
	</script>
<body style="background-color:powderblue;">
<center>
<form method="post" action="LoginCheck" name="myform">
		<table>
		    <tbody>
		    <h1 >Temprature Conversion</h1>
		    <tr><td></td></tr><tr><td></td></tr>
		    <tr><td></td></tr><tr><td></td></tr>
		    <tr><td></td></tr><tr><td></td></tr>
		    <tr>
				<td>Input Numerical Value</td>
				<td><input type="text" inputmode="numeric" id="ip" name="ip" required="" autofocus=""></td>
				
			</tr>
			<tr>
				<td>Input Unit of Measure</td>
				<td> <select name="InputUM">
				    <option value="0">select</option>
    				<option value="1">Kelvin</option>
    				<option value="2">Celsius</option>
    				<option value="3">Fahrenheit</option>
    				<option value="4">Rankine</option>
  					</select>
  				</td>
			</tr>
			<tr>
				<td>Target Unit of Measure</td>
				<td><select name="TargetUM">
				    <option value="0">select</option>
    				<option value="1">Kelvin</option>
    				<option value="2">Celsius</option>
    				<option value="3">Fahrenheit</option>
    				<option value="4">Rankine</option>
  					</select></td>
			</tr>
			<tr>
				<td>Student Response</td>
				<td><input type="text" name="sres"></td>
				
				<td><div id="myDIV"></div></td>

			</tr>
			<tr>
				<td></td>
				
				<td><input onclick="return take_value()" type="button" value="Validate" ></td>
				<td><input  type="reset" value="Reset" ></td>
			</tr>
			</tbody>
		</table>
		
	</form></center>
	<p id="demo"></p>
</body>
</html>


