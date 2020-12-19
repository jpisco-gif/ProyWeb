function validar1 (){
    var origen,destino,fecha;
    
    origen=document.getElementById("origen").value;
    destino=document.getElementById("destino").value;
    fecha=document.getElementById("fecha").value;
    
    if(origen === "" || destino === "" || fecha === ""){
        alert("Todos los campos son necesarios");
        return false;
    }
    
    
    
    if(origen === "Origen"){
        alert("Seleccione el origen");
        return false;
    }
    
    else if(destino === "Destino"){
        alert("Seleccione el destino");
        return false;
    }
    
    else if(fecha === "dd/mm/aaaa"){
        alert("Seleccione el destino");
        return false;
    }
    
    
    
    
    
}