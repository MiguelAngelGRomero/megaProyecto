function cargarPeliculas() {
    fetch("contenido.json") //fetch para sacar archivos del json
        .then(respuesta => respuesta.json()) //almacenamos la respuesta
        .then(function(salida) { //funcion anonima para crear el div
            let contenedor = document.getElementById("contenedorContenido"); //se obtiene el id del div que esta en el documento
            for (let item of salida.contenido) {
                let div = document.createElement("div"); //se crea el elemento div con las imagenes y botones
                div.className = "divContenido";
                div.innerHTML = `
                    
                        <img class="imagen" src="${item.imagen}" alt="cargando...">
                    
                    <p>${item.titulo}</p>
                    <button onclick="meGusta('${item.titulo}')">Me gusta</button>
                    <button onClick="ocultar(this)">Ocultar</button>
                    <button>Favorito</button>
                `;
                contenedor.appendChild(div);  //se agrega al contenedor como hijos
            }
        })
        .catch(function(error) {  //se captura el error si llegara a pasar
            console.error("Error al cargar JSON:", error);
        });
}


function meGusta(titulo){   //Te muestra en una alerta que te gusto el nombre de la serie
    alert(`¡Te gustó ${titulo}!`);
}

function ocultar(boton){  //oculta
    let contenedor = boton.parentElement;
    contenedor.style.display="None";
}

//llamamos a la funcion
cargarPeliculas();


