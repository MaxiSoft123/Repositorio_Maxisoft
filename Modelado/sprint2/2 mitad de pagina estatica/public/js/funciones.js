const datos = () => {
    const nombre = document.querySelector('#nombre');
    const apellido = document.querySelector('#apellido');
    const tipo = document.querySelector('#tipo');
    const documento = document.querySelector('#documento');
    const contrasena = document.querySelector('#contrasena');
    if(nombre.value.length == 0 || apellido.value.length == 0 || tipo.value.length == 0 || documento.value.length == 0 || contrasena.value.length == 0){
        document.getElementById("respuesta").innerHTML = `Faltan datos por llenar`;
    }else{
        document.getElementById("respuesta").innerHTML = `Registro exitoso, los datos registrados son: <br> Nombre: ${nombre.value} <br> Apellido: ${apellido.value} <br> Tipo de docuemnto: ${tipo.value} <br> Numero de documento: ${documento.value} <br> Contraseña: ${contrasena.value} <br>`;
    }
    alert('naguara');
};

const registrar = document.querySelector('#registrar');
registrar.addEventListener('click', datos);