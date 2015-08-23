var Appointments = React.createClass({
  render: function() {
    var joinAppointment = this.props.joinAppointment;
    var appointments = this.props.appointments.map(
      function(appointment, index){
        return(
            <Appointment
              index={index}
              appointment={appointment}
              joinAppointment={joinAppointment}/>
          );
        });

    return(
      <div >
        { appointments }
      </div>
    );

    }
});
