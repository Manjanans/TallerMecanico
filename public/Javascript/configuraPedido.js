var productos=[];

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
    }
    
});