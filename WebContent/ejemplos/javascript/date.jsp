<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

  
<section>
	<h2>JavaScript</h2>

	<article>	
		<header>
			<h1>Date</h1>
		</header>
			
		<div class="cnt_article">
			
			<script>
			
				//crear objeto fecha actual
				var fecha = new Date();
				var fechaGMT = fecha.toGMTString();
				var fechaLocale = fecha.toLocaleString();
				
				//escribe en la pagina
				document.write("Fecha actual       : " + fecha + " <br>");
				document.write("Fecha actual GMT   : " + fechaGMT + " <br>");
				document.write("Fecha actual Local : " + fechaLocale + " <br>");
				
			</script>
			
		</div>
		
		<header>
			<h1>Jquere UI - DatePicker</h1>
		</header>
			
		<div class="cnt_article">
		
		
			<p>Date: <input type="text" class="fecha"></p>
		
		</div>
		
		<footer>
			<a href="https://jqueryui.com/datepicker/#default">Datepicker - Jquery</a>
		</footer>
			
	</article>
	
	
	
	
	
	
	
</section>

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>