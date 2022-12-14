let listElements = document.querySelectorAll('.list__button--click');

listElements.forEach(listElement => {
    listElement.addEventListener('click', () => {

        listElement.classList.toggle('arrow');

        let height = 0;
        let menu = listElement.nextElementSibling;
        if (menu.clientHeight == "0") {
            height = menu.scrollHeight;
        }

        menu.style.height = `${height}px`;

    })
});


const cambio = (ws) => {
    document.getElementById("hola").innerHTML = ws
}

//const btncambio = document.querySelector('.nav__link nav__link--inside')
//btncambio.addEventListener('click', cambio(this))

const registrarUsuario = () => {
    const nombre = document.querySelector("#nombre")
    const apellidos = document.querySelector("#apellidos")
    const documento = document.querySelector("#documento")
    const telefono = document.querySelector("#telefono")
    const correo = document.querySelector("#correo")
    const contraseña = document.querySelector("#contraseña")
    const confirmar_contraseña = document.querySelector("#confirmar_contraseña")

    if (nombre.value.length == 0 || apellidos.value.length == 0 || documento.value.length == 0 || telefono.value.length == 0 || correo.value.length == 0 || contraseña.value.length == 0 || confirmar_contraseña.value.length == 0) {
        alert("Los campos del formulario no pueden estar vacios")
    } else {
        alert("Registro exitoso")
    }
}