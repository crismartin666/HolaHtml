<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

  
<section>
	<h2>Eventos</h2>

	<article>	
		<header>
			<h1>OnClick en etiqueta </h1>
		</header>
			
		<div class="cnt_article">
			
			<i class="fa fa-venus-mars fa-4x" onclick="alert('pulsado icono');"></i>
			
		</div>
		
		<footer>
			Capitulo 14; pagina 328

		</footer>
			
	</article>
	
	<article>	
		<header>
			<h1>OnClick en el objeto con JavaScript </h1>
		</header>
			
		<div class="cnt_article">
			
			<i class="fa fa-align-justify fa-4x" id="bnt_menu"></i>
			<script>
				var btn_menu = document.getElementById("bnt_menu");
				btn_menu.onclick = function(){
					
					alert('Boton pulsado, evento relacionado con javascript');
				};
				
			</script>
			
		</div>
		
		<footer>
			Capitulo 14; pagina 328

		</footer>
			
	</article>
	
	
	<article>	
		<header>
			<h1>Asociar evento con Listener </h1>
		</header>
			
		<div class="cnt_article">
			
			<i class="fa fa-align-justify fa-4x" ></i>
			<i class="fa fa-align-justify fa-4x" ></i>
			<i class="fa fa-align-justify fa-4x" ></i>
			<i class="fa fa-align-justify fa-4x" ></i>
			
			<script>
			
				//declaramos una referecnia a la fucion;
				var saluda = function funcion_saluda(){
					alert('evento asociado por listener');
				}
				
				var listaBotones = document.getElementsByTagName("i");
				
				//asignación del evento a todos los elementos
				
				for(i=0; i<listaBotones.length; i++) {

					listaBotones[i].addEventListener("click",saluda );
				}
				
			</script>
			
		</div>
		
		<footer>
			Capitulo 14; pagina 328

		</footer>
			
	</article>
	
	<article>	
		<header>
			<h1>Mostrar eventos en textarea </h1>
		</header>
			
		<div class="cnt_article">
		
			<div class="clearfix cnt_cols">
			
				<div class="col1">
				
					<textarea id="txt" cols="40" rows="20"></textarea>
				</div>
			
				<div class="col2">
					
					<fieldset>
						<input type="button" id="boton" value="Pulsame">
						<input type="button" id="clear" value="Limpiar">
						
						<select id="selec">
							<option value="bio">Bilbao</option>
							<option value="bar">Barakaldo</option>
							<option value="Get">Getxo</option>
						</select>
					</fieldset>

					<fieldset>
						<input type="text" id="texto" name="entradaTexto" value=""
					           placeholder="Escribe algo"
					           title="Al perder el foco se escribira el contenido en el textarea">		
				    </fieldset>

				    <fieldset>
					<legend>Radio buttons</legend>
						<span>Sexo:</span><br>
						<input type="radio" name="sexo" id="datospersonalesSexoH" value="h" >
						<label for="datospersonalesSexoH">Hombre</label>
						<br>
						<input type="radio" name="sexo" id="datospersonalesSexoM" value="m" >
						<label for="datospersonalesSexoM">Mujer</label>
						<br>
						<input type="radio" name="sexo" id="datospersonalesSexoX" value="i" checked="checked">
						<label for="datospersonalesSexoX">Indefinido</label>
					</fieldset>
					
					<fieldset>
					<legend>Conocimientos</legend>
						<input type="checkbox" name="conocimientos" id="datospersonalesConocimientos1" value="0" checked="checked">
						<label for="datospersonalesConocimientos1">HTML</label>
						<br>
						<input type="checkbox" name="conocimientos" id="datospersonalesConocimientos2" value="1" >
						<label for="datospersonalesConocimientos2">JavaScript</label>
						<br>
						<input type="checkbox" name="conocimientos" id="datospersonalesConocimientos3" value="2" checked="checked">
						<label for="datospersonalesConocimientos3">CSS</label>
						<br>
						<input type="checkbox" name="conocimientos" id="datospersonalesConocimientos4" value="3" >
						<label for="datospersonalesConocimientos4">JQuery</label>
						<br>
						<input type="checkbox" name="conocimientos" id="datospersonalesConocimientos5" value="4" >
						<label for="datospersonalesConocimientos5">Java</label>
					</fieldset>

				</div>
			
			</div>
			
			<script type="text/javascript">
			
				//buscar objetos por su ID
				var txt   = document.getElementById("txt");
				
				var boton     = document.getElementById("boton");
				var selec     = document.getElementById("selec");
				var clear     = document.getElementById("clear");
				var cajaTexto = document.getElementById("texto");
			
				
				//objetos por su name
				var sexoRadio  = document.getElementsByName("sexo");
				var conChexbox = document.getElementsByName("conocimientos")
				
				boton.onclick = function( event ){
					console.debug('Boton pulsado');
					txt.value += 'Boton pulsado ';
					txt.value += '[x,y] + [' + event.x + ',' + event.y + ']\n';
				}
				
				clear.onclick = function( event ){
					console.debug('Boton Limpiar');
					txt.value = '';
				}

				selec.onchange = function( event ){
					console.debug('selec cambiado');
					
					var indice = selec.selectedIndex;
					var texto  = selec.options[indice].text;
					var valor  = selec.options[indice].value;					
					
					txt.value += 'opcion cambiada: '  + texto + '[' + valor + ']' + '\n';
					
				}

				texto.onblur = function( event ){
					console.debug('texto escrito');
					txt.value += 'texto excrito: '  + texto.value + '\n';
					
				}

				for(var i = 0; i < sexoRadio.length; i++) {
				    sexoRadio[i].onclick = function( event ) {
				    	console.debug('radio buttons ');
				    	
				    	txt.value += 'radio buttons: Checked '  + this.value + '\n';
				    };
				}
				
				for(var i = 0; i < conChexbox.length; i++) {
					conChexbox[i].onchange = function( event ) {
				    	console.debug('checkbox ');
				    	if ( this.checked ) {
				    		txt.value += 'checkbox : Checked '  + this.value + '\n';
				    	} else {
				    		txt.value += 'checkbox : No checked '  + this.value + '\n';
				    	}

				    	
				    };
				}

			</script>
			
		</div>
		
		<footer>
			Sin referencia
		</footer>
			
	</article>
	
	
	
	
</section>

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>