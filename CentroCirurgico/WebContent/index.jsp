<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
<%

String email = request.getParameter("email");
String pswd = request.getParameter("pswd");

if(request.getParameter("sair")!= null){
	session.setAttribute("login", null);
}

// out.print("email = "+email+" senha = "+pswd);
boolean testeLogin = false;
if(email != null && pswd != null){
	if(email.equals("user@user") && pswd.equals("0123")){
		session.setAttribute("login", "login-ok");
		response.sendRedirect("gerenciarPainel.jsp");
	}
}

%>
  <br/>
  <h3>Bem vindo colaborador!</h3>
  <br/>
  <br/>
  <h5>Fa�a o Login para gerenciar o Painel</h5>
  <form method="post">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="insira 'user@user'" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="insira password '0123' " name="pswd">
    </div>
    
    <script type="text/javascript">
    
    function painel(){
		window.location.replace('painel.jsp');
	}
	
	function novo(){
		window.location.replace('gerenciarPainel.jsp');
	}
	
	function sair(){
		window.location.replace('index.jsp?sair');
	}
    
    </script>
    
    <button type="submit" class="btn btn-primary">Submit</button>
    <button type="button" class="btn btn-secondary" onclick="painel()">Painel</button>
			<button type="button" class="btn btn-secondary" onclick="sair()">Sair</button>
  </form>
</div>

</body>
</html>
