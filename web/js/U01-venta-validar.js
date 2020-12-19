function validar(){
    var numdoc,nombre,apepat,apemat,edad,telef;
    
    numdoc=document.getElementById("numdoc").value;
    nombre=document.getElementById("nombre").value;
    apepat=document.getElementById("apepat").value;
    apemat=document.getElementById("apemat").value;
    edad=document.getElementById("edad").value;
    telef=document.getElementById("telef").value;
    
    if(numdoc === "" || nombre === "" || apepat === "" || apemat === "" || edad === "" || telef === ""){
        alert("Todos los campos son necesarios");
        return false;
    }
    
    else if(numdoc.length>8){
        alert("El codigo del documento es muy grande");
        return false;
    }
    
    else if(nombre.length>50){
        alert("El nombre es muy grande");
        return false;
    }
    
    else if(apepat.length>50){
        alert("El apellido paterno es muy grande");
        return false;
    }
    
    else if(apemat.length>50){
        alert("El apellido materno es muy grande");
        return false;
    }
    
    else if(edad.length>3){
        alert("La edad es muy grande");
        return false;
    }
    
    else if(telef.length>9){
        alert("El telefono es muy grande");
        return false;
    }
    
    else if(isNaN(numdoc)){
        alert("El documento ingresado no es un numero");
        return false;
    }
    
    else if(isNaN(edad)){
        alert("La edad ingresada no es un numero");
        return false;
    }
    
    else if(isNaN(telef)){
        alert("El telefono ingresado no es un numero");
        return false;
    }
    
    else if(!isNaN(nombre)){
        alert("El nombre no debe ser un numero");
        return false;
    }
    
    else if(!isNaN(apepat)){
        alert("El apellido paterno no debe ser un numero");
        return false;
    }
    
    else if(!isNaN(apemat)){
        alert("El apellido materno no debe ser un numero");
        return false;
    }
}
