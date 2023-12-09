var productos=[];
var idProv = 0;
var value = 0;
var carrito = [];

document.addEventListener('DOMContentLoaded', function() {
    const empleados = document.getElementById('empleados');
    $.ajax({
        url: '/employee', 
        method: 'GET',
        dataType: 'json',
        success: function(data) {   
            data.forEach(comps => {
                empleados.innerHTML+=`<option value="${comps.NUMEMP}">${comps.NOMEMP}</option>`
            });
        },
        error: function(error) {
            console.error('Error fetching data:', error);
        }
    });
});

document.getElementById('provSelect').addEventListener('change', function() {
    const prov = document.getElementById('provSelect').value;
    const prods = document.getElementById('prodsProv');
    const aidi = document.getElementById('idProd');
    const cost = document.getElementById('valor');
    aidi.value="";
    if(prov!=""){
        document.getElementById('testo').hidden = true;
        document.getElementById('label').hidden = true;
        while (prods.firstChild) {
            prods.removeChild(prods.firstChild);
        }
        productos=[];
        var vacio = document.createElement('option');
        vacio.value = "";
        vacio.innerHTML = "Selecciona un Producto: ";
        prods.appendChild(vacio);
        $.ajax({
            url: '/prods_pedido', 
            method: 'GET',
            data: {prov:prov},
            success: function(response) {
                response.forEach(prod => {
                    var opcion = document.createElement('option');
                    opcion.value = prod.NUM_PROD;
                    opcion.innerHTML = prod.NOMBRE;
                    prods.appendChild(opcion);
                    productos.push(prod.NUM_PROD);
                });
            },
            error: function(error) {
                console.error('Error fetching data:', error);
            }
        });
    }else{
        while (prods.firstChild) {
            prods.removeChild(prods.firstChild);
        }
        var vacio = document.createElement('option');
        vacio.value = "";
        vacio.innerHTML = "Selecciona un Producto: ";
        prods.appendChild(vacio);
        aidi.value = "0";
        cost.innerHTML = "";
        document.getElementById('testo').hidden = true;
        document.getElementById('label').hidden = true;
    }
});

document.getElementById('prodsProv').addEventListener('change', function() {
    const prov = document.getElementById('provSelect').value;
    const prod = document.getElementById('prodsProv').value;
    const aidi = document.getElementById('idProd');
    const cost = document.getElementById('valor');
    if(prod!=""){
        aidi.value = prod;
        document.getElementById('testo').hidden = false;
        document.getElementById('label').hidden = false;
        $.ajax({
            url: '/prods_pedido', 
            method: 'GET',
            data: {prov:prov},
            success: function(response) {
                response.forEach(producto => {
                    if(producto.NUM_PROD == prod){
                        cost.innerHTML = producto.VALOR_UNITARIO;
                        value = producto.VALOR_UNITARIO;
                    }
                });
            },
            error: function(error) {
                console.error('Error fetching data:', error);
            }
        });
        document.getElementById('agregar').hidden=false;
    }else{
        aidi.value = "0";
        cost.innerHTML = "";
        document.getElementById('testo').hidden = true;
        document.getElementById('label').hidden = true;
        document.getElementById('agregar').hidden=true;
    }
});

document.getElementById('idProd').addEventListener('keyup', function() {
    const prov = document.getElementById('provSelect').value;
    let codigo =  document.getElementById('idProd').value;
    const codigos = document.getElementById('prodsProv');
    const cost = document.getElementById('valor');
    if(productos.includes(parseInt(codigo))){
        $.ajax({
            url: '/prods_pedido', 
            method: 'GET',
            data: {prov:prov},
            success: function(response) {
                response.forEach(producto => {
                    if(producto.NUM_PROD == codigo){
                        cost.innerHTML = producto.VALOR_UNITARIO;
                        value = producto.VALOR_UNITARIO;
                    }
                });
            },
            error: function(error) {
                console.error('Error fetching data:', error);
            }
        });
        document.getElementById('testo').hidden = false;
        document.getElementById('label').hidden = false;
        const productos = document.getElementById("prodsProv");
        //Se convierte en arreglo, con findIndex se obtiene el index, y se modifica el select luego.
        const index = [...productos.options].findIndex(option => option.value == codigo);
        codigos.selectedIndex=index;
        document.getElementById('agregar').hidden=false;    
    }else{
        cost.innerHTML = "";
        document.getElementById('testo').hidden = true;
        document.getElementById('label').hidden = true;
        codigos.selectedIndex=0;
        document.getElementById('agregar').hidden=true;
    }
    
});

document.getElementById('agregar').addEventListener('click', function() {
    const id = document.getElementById('idProd').value;
    const prov = document.getElementById('provSelect').value;
    const cant = document.getElementById('quantity').value;
    var bul = false;
    
    if(cant!=""){
        if(carrito.length==0){
            idProv=parseInt(prov);
            document.getElementById('finalizar').hidden=false;
            document.getElementById('empleados').hidden=false;
        }

        carrito.forEach((element) => {
            if(element.idProd == id){
                element.cantidad = parseInt(element.cantidad) + parseInt(cant);
                bul = true;
            }
        });

        if(!bul){
            const producto = {
                idProd:id,
                costo:value,
                nombre:document.getElementById('prodsProv').options[document.getElementById('prodsProv').selectedIndex].text,
                cantidad:parseInt(cant)
            }    
            carrito.push(producto);
        }
        
        const tbody = document.querySelector('tbody');
        while (tbody.firstChild) {
            tbody.removeChild(tbody.firstChild);
        }

        carrito.forEach((element) => {
            const fila = document.createElement("tr");
            const eliminar = document.createElement('button');
            eliminar.textContent = "Eliminar producto";
            eliminar.className = "btn btn-danger";
            eliminar.id = "eliminarProducto";
            eliminar.value = element.idProd;
            const celda1 = document.createElement("td");
            const celda2 = document.createElement("td");
            const celda3 = document.createElement("td");
            const celda4 = document.createElement("td");
            const celda5 = document.createElement("td");
            const celda6 = document.createElement("td");
            celda1.textContent = element.idProd;
            celda2.textContent = element.nombre;
            celda3.textContent = element.cantidad;
            celda4.textContent = element.costo;
            celda5.textContent = element.costo*element.cantidad;
            celda6.appendChild(eliminar);
            fila.appendChild(celda1);
            fila.appendChild(celda2);
            fila.appendChild(celda3);
            fila.appendChild(celda4);
            fila.appendChild(celda5);
            fila.appendChild(celda6)
            tbody.appendChild(fila);
        });

        document.getElementById('provSelect').disabled=true;
        document.getElementById('prodsProv').selectedIndex=0;
        document.getElementById('idProd').value="";
        document.getElementById('testo').hidden = true;
        document.getElementById('label').hidden = true;
        document.getElementById('quantity').value="";
    }else{
        alert("Ingresa un número en cantidad.");
    }
});

document.getElementById('finalizar').addEventListener('click', function() {
    const emp = document.getElementById('empleados').value;
    if(emp!=""){
        $.ajax({
            url: '/agregarPedido', 
            method: 'POST',
            contentType: 'application/json',
            data: JSON.stringify({
                data: carrito, proveedor:idProv, empleado:emp,}),
            success: function(data) {
                $(document).ready(function(){
                    $('#success').modal('show');   
                    setTimeout(function(){window.location.href = '/pedidos';},1000);
                });
                
            },
            error: function(error) {
                console.error('Error fetching data:', error);
            }
        });
    }else{
        alert("Selecciona un empleado.");
    }
    
});

document.querySelector('tbody').addEventListener('click', function(event) {
    if (event.target && event.target.id == 'eliminarProducto') {
        const id = event.target.value;
        const tbody = document.querySelector('tbody');
        if (carrito.length == 1) {
            carrito.pop();
            while (tbody.firstChild) {
                tbody.removeChild(tbody.firstChild);
            }
        } else {
            carrito = carrito.filter((element) => element.idProd != id);
            console.log(carrito);
            while (tbody.firstChild) {
                tbody.removeChild(tbody.firstChild);
            }
            carrito.forEach((element) => {
                const fila = document.createElement('tr');
                const eliminar = document.createElement('button');
                eliminar.textContent = 'Eliminar producto';
                eliminar.className = 'btn btn-danger';
                eliminar.id = 'eliminarProducto';
                const celda1 = document.createElement('td');
                const celda2 = document.createElement('td');
                const celda3 = document.createElement('td');
                const celda4 = document.createElement('td');
                const celda5 = document.createElement('td');
                const celda6 = document.createElement('td');
                celda1.textContent = element.idProd;
                celda2.textContent = element.nombre;
                celda3.textContent = element.cantidad;
                celda4.textContent = element.costo;
                celda5.textContent = element.costo * element.cantidad;
                celda6.appendChild(eliminar);
                fila.appendChild(celda1);
                fila.appendChild(celda2);
                fila.appendChild(celda3);
                fila.appendChild(celda4);
                fila.appendChild(celda5);
                fila.appendChild(celda6);
                tbody.appendChild(fila);
            });
        }
    }
    if(carrito.length == 0){
        document.getElementById('finalizar').hidden = true;
        document.getElementById('agregar').hidden = true;
        document.getElementById('empleados').hidden = true;
        document.getElementById('provSelect').disabled = false;
    }
});
