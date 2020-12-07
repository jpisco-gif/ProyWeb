function validar(){
    var nombres,apellido_paterno,apellido_materno,telefono,edad,dni;
    
    nombres =document.getElementById("txtNombres").value;
    apellido_paterno =document.getElementById("txtApellido_paterno").value;
    apellido_materno =document.getElementById("txtApellido_materno").value;
    telefono =document.getElementById("txtTelefono").value;
    edad =document.getElementById("txtEdad").value;
    dni =document.getElementById("txtCod_documento").value;
     
    if(nombres === "" || apellido_paterno === "" || apellido_materno === "" || telefono === "" || edad === "" || dni === "" ) {
        alert("Todos los campos son necesarios");
        return false;
    }
    
    else if(nombres.length>50){
        alert("El nombre es muy grande");
        return false;
    }
    
    else if(apellido_paterno.length>50){
        alert("El apellido paterno es muy grande");
        return false;
    }
    
    else if(apellido_materno.length>50){
        alert("El apellido materno es muy grande");
        return false;
    }
    
    else if(telefono.length>9){
        alert("El telefono es muy grande");
        return false;
    }
    
    else if(edad.length>3){
        alert("La edad es demasiado grande");
        return false;
    }
    
    else if(dni.length>8){
        alert("El DNI es demasiado grande");
        return false;
    }
    
    else if(isNaN(telefono)){
        alert("El telefono ingresado no es un numero");
        return false;
    }
    
    else if(isNaN(edad)){
        alert("La edad ingresada no es un numero");
        return false;
    }
    
    else if(isNaN(dni)){
        alert("El dni ingresado no es un numero");
        return false;
    }
    
    
    
    
    
    
    
}