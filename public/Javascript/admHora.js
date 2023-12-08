var valor;

document.addEventListener('DOMContentLoaded', function() {
    document.querySelectorAll('#btnLiberar').forEach(function(button) {
        button.addEventListener('click', function() {
            valor = button.value;
            $(document).ready(function() {
                $('#custom-alert-modal').modal('show');
                $('#cuerpo').children().remove();
                $('#cuerpo').append(`
                    <div id="holra">
                        ¿Quieres liberar la hora ${valor}?
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
        $.ajax({
            method: 'POST',
            url: '/liberaHora',
            data: {valor:valor},
            success: function(response) {
                $('#custom-alert-modal').modal('hide');
                $('#success').modal('show');
                setTimeout(function(){window.location.href = '/';},1000);
            },
            error: function(error) {
                console.error('Error in POST request:', error);
            }
        });
    })
});