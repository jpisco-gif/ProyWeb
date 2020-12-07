function validar(){
    var incidencias;
    incidencias = document.getElementById("txtIncidencias").value;
    
    if(incidencias === ""){
        alert("El campo incidencias esta vacio");
        return false;
    }
    
    else if(incidencias.length>11){
        alert("El numero de incidencias es muy grande");
        return false;
    }
    
    else if(isNaN(incidencias)){
        alert("La incidencia ingresada no es un numero");
        return false;
    }
}