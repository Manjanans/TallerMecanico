var pedido;
var visualizar = 0;

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

document.addEventListener('DOMContentLoaded', function() {
    document.querySelectorAll('#btnDetalle').forEach(function(button) {
        button.addEventListener('click', function() {
            visualizar = button.value;
            $(document).ready(function() {
                $('#detPedido').modal('show');
                $('#cuerpito').children().remove();
                $('#cerrar').on('click', function(){
                    $('#detPedido').modal('hide');
                });
            });
            $.ajax({
                url: '/detallePedido', 
                method: 'GET',
                data: {data:visualizar},
                dataType: 'json',
                success: function(data) {   
                    data.forEach(comps => {
                        cuerpito.innerHTML+=`
                        <tr>
                            <th scope="row">${comps.NUMPROD}</th>
                            <td>${comps.NOMPROD}</td>
                            <td>${comps.CANT}</td>
                            <td>${comps.VALOR}</td>
                            <td>${comps.MAXIMO}</td>
                        </tr>
                        `
                    });
                },
                error: function(error) {
                    console.error('Error fetching data:', error);
                }
            });
        });
    });
});

document.addEventListener('DOMContentLoaded', function() {
    document.querySelectorAll('#btnRecepcion').forEach(function(button) {
        button.addEventListener('click', function() {
            pedido = button.value;
            $(document).ready(function() {
                $('#custom-alert-modal').modal('show');
                $('#cuerpo').children().remove();
                $('#cuerpo').append(`
                    <div id="holra">
                        ¿Quieres recepcionar el pedido ${pedido}?
                    </div>
                `);
                $('#custom-alert-cancel-btn').on('click', function(){
                    console.log("Cancel pressed");
                    $('#custom-alert-modal').modal('hide');
                })
            });
            
        });
    });
});

$(document).ready(function(){
    $('#custom-alert-ok-btn').on('click',function(){
        $('#empleado').modal('show');
        $('#ok-final').on('click',function(){
            const idemp = document.getElementById('empleados').value;
            if(idemp!=""){
                $.ajax({
                    method: 'POST',
                    url: '/recepcionaPedido',
                    data: {valor:pedido,idemp:idemp},
                    success: function(response) {
                        $('#custom-alert-modal').modal('hide');
                        $('#success').modal('show');
                        setTimeout(function(){window.location.href = '/pedidos';},1000);
                    },
                    error: function(error) {
                        console.error('Error in POST request:', error);
                    }
                });
            }
            else{
                alert("Selecciona un empleado.");
            }            
        });
    });
    $('#cancela').on('click', function(){
        $('#empleado').modal('hide');
        $('#custom-alert-modal').modal('hide');
    });
});