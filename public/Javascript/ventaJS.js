var arreglito = [];

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
        document.getElementById('agregasion').hidden=true;
        document.getElementById('tipo_venta').selectedIndex=0;
        document.getElementById('tipo_comp').selectedIndex=0;
        document.getElementById('venta').hidden=true;
        document.getElementById('paso-final').selectedIndex=0;
        document.getElementById('idProdServ').value="";
        document.getElementById('testo').hidden=true;
        document.getElementById('quantity').hidden=true;
        document.getElementById('quantity').value="";
    }    
});

document.addEventListener('DOMContentLoaded', function() {
    const compro = document.getElementById('tipo_comp');
    const pago = document.getElementById('forma_pago');
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
    $.ajax({
        url: '/pagos', 
        method: 'GET',
        dataType: 'json',
        success: function(data) {   
            data.forEach(comps => {
                pago.innerHTML+=`<option value="${comps.NUM}">${comps.PTC}</option>`
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
    }else{
        document.getElementById('venta').hidden=true;
        document.getElementById('paso-final').selectedIndex=0;
        document.getElementById('idProdServ').value="";
        document.getElementById('testo').hidden=true;
        document.getElementById('quantity').hidden=true;
        document.getElementById('quantity').value="";
    }
});

document.getElementById('paso-final').addEventListener('change', function() {
    const pf = document.getElementById('paso-final').value;
    const tv = document.getElementById('tipo_venta').value;

    if(pf!=""){
        document.getElementById('label').hidden=false;
        document.getElementById('testo').hidden=false;
        document.getElementById('quantity').hidden=false;
        document.getElementById('agregar').hidden=false;
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
        document.getElementById('idProdServ').value="";
        document.getElementById('testo').hidden=true;
        document.getElementById('quantity').hidden=true;
        document.getElementById('quantity').value="";
        document.getElementById('agregar').hidden=true;
        document.getElementById('label').hidden=true;
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
            document.getElementById('label').hidden=false;
            document.getElementById('quantity').hidden=false;
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

document.getElementById('agregar').addEventListener('click', function() {
    const tipoVenta = document.getElementById('tipo_venta').value;
    const idProdServ = document.getElementById('idProdServ').value;
    const cantidad = document.getElementById('quantity').value;
    const valor = document.getElementById('valor').innerHTML;
    const quantity = parseInt(cantidad);
    try{
        const value = parseInt(valor);
        const subtotal = quantity*value;
        console.log(subtotal);
        if(cantidad == ""){
            alert("Todos los campos son obligatorios");
        }else{
            const venta = {
                tipoVenta: tipoVenta,
                id: idProdServ,
                cantidad: quantity,
                subtotal: subtotal
            };
        
            arreglito.push(venta);
            const tbody = document.querySelector("tbody");
            const fila = document.createElement("tr");
            const celda1 = document.createElement("td");
            const celda2 = document.createElement("td");
            const celda3 = document.createElement("td");
            const celda4 = document.createElement("td");
            celda1.textContent = tipoVenta;
            celda2.textContent = document.getElementById('paso-final').options[document.getElementById('paso-final').selectedIndex].text;
            celda3.textContent = cantidad;
            celda4.textContent = subtotal;
            fila.appendChild(celda1);
            fila.appendChild(celda2);
            fila.appendChild(celda3);
            fila.appendChild(celda4);
            tbody.appendChild(fila);
            console.log(arreglito);
            document.getElementById('tipo_venta').selectedIndex=0;
            document.getElementById('tipo_comp').selectedIndex=0;
            document.getElementById('venta').hidden=true;
            document.getElementById('paso-final').selectedIndex=0;
            document.getElementById('idProdServ').value="";
            document.getElementById('testo').hidden=true;
            document.getElementById('quantity').hidden=true;
            document.getElementById('quantity').value="";
            document.getElementById('label').hidden=true;
            document.getElementById('end').hidden=false;
            document.getElementById('finalizar').hidden=false;
        }
    }catch{
        alert("Ingresa un número en la cantidad.");
    }
});

var arreglito = [];

document.getElementById('finalizar').addEventListener('click', function() {
    const comprobante = parseInt(document.getElementById('tipo_comp').value);
    const pago = parseInt(document.getElementById('forma_pago').value);
    const hora = parseInt(document.getElementById('horaSelect').value);

    if(comprobante!="" && pago !=""){
        $.ajax({
            url: '/finalizar-venta', 
            method: 'POST',
            contentType: 'application/json',
            data: JSON.stringify({
                data: arreglito,
                aidis: {
                    comprobante: comprobante,
                    pago: pago,
                    hora: hora
                }
            }),
            success: function(data) {
                $(document).ready(function(){
                    $('#success').modal('show');   
                    setTimeout(function(){window.location.href = '/';},1000);
                });
                
            },
            error: function(error) {
                console.error('Error fetching data:', error);
            }
        });
    }else{
        alert("Elige un tipo de comprobante");
    }
})