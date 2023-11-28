document.getElementById('horaSelect').addEventListener('change', function() {
    const hora = document.getElementById('horaSelect').value;
    if(hora != ""){
        $.ajax({
            url: '/cliente-venta', 
            method: 'GET',
            dataType: 'json',
            success: function(data) {   
                data.forEach(horas => {
                    if (horas.NUM_HORA == hora){
                        document.getElementById('idCliente').value = horas.NUM_CLIENTE;
                        document.getElementById('nomCli').value = horas.NOM_CLI;
                        document.getElementById('rutCli').value = horas.RUT_COMPLETO;
                    }
                });
            },
            error: function(error) {
                console.error('Error fetching data:', error);
            }
        });
        document.getElementById("agregasion").hidden = false;
    }else{
        document.getElementById('idCliente').value = "";
        document.getElementById('nomCli').value = "";
        document.getElementById('rutCli').value = "";
        document.getElementById("agregasion").hidden = true;
        document.getElementById("venta").hidden=true;
        document.getElementById("tipo_venta").selectedIndex=0;
        document.getElementById("tipo_comp").selectedIndex=0;
    }    
});

document.addEventListener('DOMContentLoaded', function() {
    const compro = document.getElementById('tipo_comp');
    $.ajax({
        url: '/comprobantes', 
        method: 'GET',
        dataType: 'json',
        success: function(data) {   
            data.forEach(comps => {
                compro.innerHTML+=`<option value="${comps.NUM}">${comps.PTC}</option>`
            });
        },
        error: function(error) {
            console.error('Error fetching data:', error);
        }
    });    
});

document.getElementById('tipo_venta').addEventListener('change', function() {
    const tv = document.getElementById('tipo_venta').value;
    const venta = document.getElementById('venta');
    const seleccion = document.getElementById('paso-final');
    if(tv!=""){
        venta.hidden = false;
        while (seleccion.firstChild) {
            seleccion.removeChild(seleccion.firstChild);
        }
        var vacio = document.createElement('option');
        vacio.value = "";
        vacio.innerHTML = "Selecciona una de las Siguientes Opciones: ";
        seleccion.appendChild(vacio);
        if(tv == "Servicio"){
            $.ajax({
                url: '/servicios', 
                method: 'GET',
                dataType: 'json',
                success: function(data) {   
                    data.forEach(servs => {
                        var opcion = document.createElement('option');
                        
                        opcion.value = servs.NUM_SERVICIO;
                        opcion.innerHTML = servs.QUEES;
                        seleccion.appendChild(opcion);
                    });
                    document.getElementById('type').innerHTML="Servicio";
                },
                error: function(error) {
                    console.error('Error fetching data:', error);
                }
            });    
        }else{
            $.ajax({
                url: '/productos', 
                method: 'GET',
                dataType: 'json',
                success: function(data) {   
                    data.forEach(servs => {
                        var opcion = document.createElement('option');
                        opcion.value = servs.NUM_PRODUCTO;
                        opcion.innerHTML = servs.QUEES;
                        seleccion.appendChild(opcion);
                    });
                    document.getElementById('type').innerHTML="Producto";
                },
                error: function(error) {
                    console.error('Error fetching data:', error);
                }
            });    
        }
    }
});

document.getElementById('paso-final').addEventListener('change', function() {
    const pf = document.getElementById('paso-final').value;
    const tv = document.getElementById('tipo_venta').value;

    if(pf!=""){
        document.getElementById('testo').hidden=false;
        document.getElementById('quantity').hidden=false;
        if(tv == "Servicio"){
            $.ajax({
                url: '/servicios', 
                method: 'GET',
                dataType: 'json',
                success: function(data) {   
                    data.forEach(servs => {
                        if(servs.NUM_SERVICIO == pf){
                            document.getElementById('type').innerHTML="Servicio";
                            document.getElementById('valor').innerHTML=servs.PRECIO;
                            document.getElementById('idProdServ').value=servs.NUM_SERVICIO;
                        }
                    });
                },
                error: function(error) {
                    console.error('Error fetching data:', error);
                }
            });    
        }else{
            $.ajax({
                url: '/productos', 
                method: 'GET',
                dataType: 'json',
                success: function(data) {   
                    data.forEach(servs => {
                        if(servs.NUM_PRODUCTO == pf){
                            document.getElementById('type').innerHTML="Producto";
                            document.getElementById('valor').innerHTML=servs.PRECIO;
                            document.getElementById('idProdServ').value=servs.NUM_PRODUCTO;
                        }
                    });
                },
                error: function(error) {
                    console.error('Error fetching data:', error);
                }
            });    
        }
    }else{
        document.getElementById('testo').hidden=true;
        document.getElementById('quantity').hidden=true;
    }
});

document.getElementById('idProdServ').addEventListener('keyup', function(event) {
    let codigo =  document.getElementById('idProdServ').value;
    const codigos = document.getElementById('paso-final');
    const tv = document.getElementById('tipo_venta').value;

    if(codigo == ""){
        document.getElementById('valor').innerHTML="";
        document.getElementById('testo').hidden=true;
    }

    codigos.querySelectorAll('option').forEach(function(option, index) {
        if (option.value == codigo) {
            codigos.selectedIndex = index;
            document.getElementById('testo').hidden=false;
            if(tv == "Servicio"){
                $.ajax({
                    url: '/servicios', 
                    method: 'GET',
                    dataType: 'json',
                    success: function(data) {   
                        data.forEach(servs => {
                            if(servs.NUM_SERVICIO == codigo){
                                document.getElementById('type').innerHTML="Servicio";
                                document.getElementById('valor').innerHTML=servs.PRECIO;
                            }
                        });
                    },
                    error: function(error) {
                        console.error('Error fetching data:', error);
                    }
                });    
            }else{
                $.ajax({
                    url: '/productos', 
                    method: 'GET',
                    dataType: 'json',
                    success: function(data) {   
                        data.forEach(servs => {
                            if(servs.NUM_PRODUCTO == codigo){
                                document.getElementById('type').innerHTML="Producto";
                                document.getElementById('valor').innerHTML=servs.PRECIO;
                            }
                        });
                    },
                    error: function(error) {
                        console.error('Error fetching data:', error);
                    }
                });    
            }
        }
    });
});