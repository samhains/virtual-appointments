var AppointmentContainer = React.createClass({
  joinAppointment: function(index){
    var appointments = this.state.appointments;
    var selected = this.state.appointments[index];
    var appointment_id = selected.id;
    var self = this;
    if (selected.attending< selected.capacity){
      $.ajax({
        url: '/relationships',
        type: 'POST',
        data: {user_id: this.props.user_id, appointment_id: appointment_id},
        success: function(data){
          self.setState({appointments: data});
        }
      });
    }
    this.setState({appointments: appointments});

  },
  getInitialState: function(){
    return { appointments: this.props.appointments };
  },
  render: function() {
    return (
      <div >
        <Appointments
          appointments={ this.state.appointments }
          joinAppointment= { this.joinAppointment }/>
      </div>
    );
  }
});
