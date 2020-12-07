function validar(){
    var usuario,contraseña,email,expresion;
    
    usuario =document.getElementById("txtUsuario").value;
    contraseña =document.getElementById("txtContrasena").value;
    email =document.getElementById("txtEmail").value;
    
    expresion = /\w+@\w+\.+[a-z]/;
    
    if(usuario === "" || contraseña === "" || email === ""){
        alert("Todos los campos son necesarios");
        return false;
    }
    
    else if(usuario.length>50){
        alert("El usuario es muy grande");
        return false;
    }
    
    else if(contraseña.length>50){
        alert("La contraseña es muy grande");
        return false;
    }
    
    else if(email.length>50){
        alert("El email es muy grande");
        return false;
    }
    
    else if(!expresion.test(email)){
        alert("El email no es valido");
        return false;
    }
}