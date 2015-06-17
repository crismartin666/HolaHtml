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

					<div id="seguimiento">
					
						<span id="txtSeguimiento"></span>
					
					</div>
					
					<form id="formularioEventos" name="formularioEventos" action="#" method="post" onsubmit="validar(this); return false;">
					
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
							<input data-label="Hombre" type="radio" name="sexo" id="datospersonalesSexoH" value="h" >
							<label for="datospersonalesSexoH">Hombre</label>
							<br>
							<input data-label="Mujer" type="radio" name="sexo" id="datospersonalesSexoM" value="m" >
							<label for="datospersonalesSexoM">Mujer</label>
							<br>
							<input data-label="Indefinido" type="radio" name="sexo" id="datospersonalesSexoX" value="i" checked="checked">
							<label for="datospersonalesSexoX">Indefinido</label>
						</fieldset>
						
						<fieldset>
						<legend>Conocimientos</legend>
							<input data-label="HTML" type="checkbox" name="conocimientos" id="datospersonalesConocimientos1" value="0">
							<label for="datospersonalesConocimientos1">HTML</label>
							<br>
							<input data-label="HTML" type="checkbox" name="conocimientos" id="datospersonalesConocimientos2" value="1">
							<label for="datospersonalesConocimientos2">HTML</label>
							<br>
							<input data-label="CSS" type="checkbox" name="conocimientos" id="datospersonalesConocimientos3" value="2">
							<label for="datospersonalesConocimientos3">CSS</label>
							<br>
							<input data-label="JQuery" type="checkbox" name="conocimientos" id="datospersonalesConocimientos4" value="3">
							<label for="datospersonalesConocimientos4">JQuery</label>
							<br>
							<input data-label="Java" type="checkbox" name="conocimientos" id="datospersonalesConocimientos5" value="4">
							<label for="datospersonalesConocimientos5">Java</label>
						</fieldset>
						
						<!-- botones --> 
						<input type="submit" value="Guardar">
						<input type="reset"  value="Limpiar">
					
					</form>
				
				</div> <!-- col2 -->
			
			</div> <!-- cnt_cols -->
			
			<script type="text/javascript">
			
				/**
					Validación del formulario
					Si retorno true se submita
					Si retorno false NO se submita
				*/
				var seguimiento    = document.getElementById("seguimiento");
				var txtSeguimiento = document.getElementById("txtSeguimiento");

				/*
				function confirmation() {
					var answer = confirm("¿Deseas Enviar el formulario?")

					if (answer){
						return true;
					}
					else{
						return false;
					}
				}
				*/

				function validar(formulario){
					
					//TODO validar el formulario
					var resul = false;


					var texto = formulario.entradaTexto.value;
					var longitud=texto.length;
					
					var longitud=texto.length;
					
					
					//Coprobar si se ha escrito algo en la caja de texto
					if( longitud < 5 || longitud >255 ) {
						
						seguimiento.style.display = 'block'
						txtSeguimiento.innerHTML = "El texto tiene que tener entre 5 y 255 caracteres";
						
					} else {
						resul = true;
					}
					
					if (resul) {

						var sexo = "";
						//Determinamos del sexo seleccionado
						for (i=0 ; i< formulario.sexo.length ; i++) {
							
							if( formulario.sexo[i].checked ) {
								
								sexo = formulario.sexo[i].value;
							}
						}
	
						var conocimientos = 0;
						//Determinamos los conocimientos indicados
						for (i=0 ; i< formulario.conocimientos.length ; i++) {
							
							if( formulario.conocimientos[i].checked ) {
								
								conocimientos +=1;
							}
						}

						switch (sexo) {
						
							case 'h':
								if(conocimientos < 1) {
									seguimiento.style.display = 'block'
									txtSeguimiento.innerHTML = "Sexo Hombre --> Minimo 1 conocimiento";
									resul = false;
								}
	
								break;
							case 'm':
								if(conocimientos < 2) {
									seguimiento.style.display = 'block'
									txtSeguimiento.innerHTML = "Sexo Mujer --> Minimo 1 conocimientos";
									resul = false;
								}
	
								break;
							case 'i':
								
								if(conocimientos > 0) {
									seguimiento.style.display = 'block'
									txtSeguimiento.innerHTML = "Sexo Indefinido --> No puede haber conocimientos";
									resul = false;
								}
								
								break;
						
						}
					}
						
				
					//Comprobar si se ha escrito algo en la caja de texto
						
					if (resul) {
						
						//TODO pedir confirmación para enviar formulario
						
						var answer = confirm("¿Deseas Enviar el formulario?")

						if ( answer) {
							
							console.debug("formulario enviado")
							
							formulario.submit();							
						
						} else {
						
							console.debug("formulario NO enviado")
						}
						
					} else {

						return resul;
					}
					
				}
			
				//buscar objetos por su ID
				var txt       = document.getElementById("txt");
				
				var boton     = document.getElementById("boton");
				var selec     = document.getElementById("selec");
				var clear     = document.getElementById("clear");
				var cajaTexto = document.getElementById("texto");
			
				
				//objetos por su name
				var sexo  = document.getElementsByName("sexo");
				var conChexbox = document.getElementsByName("conocimientos")
				
				boton.onclick = function( event ){
					seguimiento.style.display = 'none';
					console.debug('Boton pulsado');
					txt.value += 'Boton pulsado ';
					txt.value += '[x,y] + [' + event.x + ',' + event.y + ']\n';
				}
				
				clear.onclick = function( event ){
					seguimiento.style.display = 'none';
					console.debug('Boton Limpiar');
					txt.value = '';
				}

				selec.onchange = function( event ){
					seguimiento.style.display = 'none';
					console.debug('selec cambiado');
					
					var indice = selec.selectedIndex;
					var texto  = selec.options[indice].text;
					var valor  = selec.options[indice].value;					
					
					txt.value += 'opcion cambiada: '  + texto + '[' + valor + ']' + '\n';
					
				}

				texto.onclick = function( event ){
					
					seguimiento.style.display = 'none';
					
				}

				texto.onblur = function( event ){
					
					seguimiento.style.display = 'none'
					console.debug('texto escrito');
					txt.value += 'texto excrito: '  + cajaTexto.value + '\n';
					
				}

				for(var i = 0; i < sexo.length; i++) {
					
				    sexo[i].onchange = function( event ) {
				    	seguimiento.style.display = 'none';
				    	console.debug('radio buttons ');
				    	var label = this.dataset.label;
				    	
				    	txt.value += 'radio buttons: Checked '  + this.value + ' ' + this.dataset.label + '\n';
				    };
				}
				
				for(var i = 0; i < conChexbox.length; i++) {
					
					conChexbox[i].onchange = function( event ) {
						seguimiento.style.display = 'none';
				    	console.debug('checkbox ');
				    	if ( this.checked ) {
				    		txt.value += 'checkbox : Checked '  + this.value + ' ' + this.dataset.label + '\n';
				    	} else {
				    		txt.value += 'checkbox : No checked '  + this.value + ' ' + this.dataset.label + '\n';
				    	}

				    	
				    };
				}

			</script>
			
		</div>
		
		<footer>
			Sin referencia
		</footer>
	
</section>

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>