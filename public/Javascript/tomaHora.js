/*$('#horaSelect').on('change', function() {
        // Get the selected ID_HORA
        const selectedIdHora = $(this).val();

        // Send a POST request to the server
        $.ajax({
            method: 'POST',
            url: '/updateHora', // Adjust the endpoint
            data: { idHora: selectedIdHora },
            success: function(response) {
                console.log('POST request successful:', response);
            },
            error: function(error) {
                console.error('Error in POST request:', error);
            }
        });
    });*/

let selectedEvent;
let oc = "blue";
let idHorita = 0;
let fecha = "";
let hora = "";


    $(document).ready(function() {
        $('#calendar').fullCalendar({
            header: {
                left: 'prev,next,today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            events: '/calendario', // URL to fetch events from
            eventRender: function(event, element) {
                /*// Customize the appearance of each event
                element.tooltip({ title: event.title, container: 'body', trigger: 'hover', placement: 'top' });
                element.addClass('selected-event');*/
            },
            eventClick: function(event, jsEvent, view) {
                console.log('Clicked event:', event);
                if (selectedEvent && selectedEvent != event) {
                    console.log('Resetting color for previously selected event:', selectedEvent);
                    selectedEvent.backgroundColor = "light-blue";
                    $('#calendar').fullCalendar('updateEvent', selectedEvent);
                }
                console.log('Setting color for clicked event:', event);
                event.backgroundColor = 'green';
                $('#calendar').fullCalendar('updateEvent', event);
                selectedEvent = event;                
                idHorita = event.id;
                fecha = event.fecha;
                hora = event.inicial;                
            },
        });
    });



$(document).ready(function(){
    $('#custom-alert-ok-btn').on('click',function(){
        const id = Math.floor(Math.random() * (100)) + 1;
        if(idHorita != 0){
            $.ajax({
                method: 'POST',
                url: '/updateHora', // Adjust the endpoint
                data: { idHora: idHorita , idCliente : id , },
                success: function(response) {
                    $('#custom-alert-modal').modal('hide');
                    $('#success').modal('show');
                    setTimeout(function(){window.location.href = '/';},1000);
                    // Handle the redirect on the client side
                     // Redirect to the specified URL
                },
                error: function(error) {
                    console.error('Error in POST request:', error);
                }
            });
            
        }else{
            alert("No se pudo ejecutar el código");
        }
    })
});

$(document).ready(function() {
    $('#custom-alert-btn').on('click', function() {
        $('#custom-alert-modal').modal('show');
        $('#cuerpo').children().remove();
        $('#cuerpo').append(`
            <div id="holra">
                ¿Quieres tomar la hora del día ${fecha}
                A las ${hora}?
            </div>
        `);
    });
    $('#custom-alert-cancel-btn').on('click', function(){
        console.log("Cancel pressed");
        $('#custom-alert-modal').modal('hide');
    })
});