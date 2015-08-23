var Appointments = React.createClass({
  render: function() {
    var joinAppointment = this.props.joinAppointment;
    var self = this;
    var appointments = this.props.appointments.map(
      function(appointment, index){
        var selectedClass = (index === self.props.index? ' selected-apt' : '');
        return(
            <Appointment
              selectedClass={selectedClass}
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
