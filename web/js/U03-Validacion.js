function validarEn(){
    var nomEn,apeEn,dniEn,nomRe,apeRe,dniRe;
     
    
    nomEn =document.getElementById("txtNomE").value;
    apeEn =document.getElementById("txtApeE").value;
    dniEn =document.getElementById("txtDniE").value;
    nomRe =document.getElementById("txtNomR").value;
    apeRe =document.getElementById("txtApeR").value;
    dniRe =document.getElementById("txtDniR").value;
    
    if(nomEn === "" || apeEn === "" || dniEn === "" || nomRe === "" || apeRe === "" || dniRe === ""){
        alert("Todos los campos son necesarios");
        return false;
    }
    
    else if(nomEn.length>50 || apeEn.length>50){
        alert("El nombre o apellido es muy grande");
        return false;
    }
    
    else if(nomRe.length>50 || apeRe.length>50){
        alert("El nombre o apellido es muy grande");
        return false;
    }
    
    else if(dniEn.length>8 || dniRe.length>8){
        alert("Dni muy grande");
        return false;
    }
    else if(dniEn.length<8 || dniRe.length<8){
        alert("Dni muy corto");
        return false;
    }
  
}

