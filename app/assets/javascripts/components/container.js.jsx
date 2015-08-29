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
        error: function(data){
           console.log(data)
        },
        success: function(data){
          self.setState({appointments: data, index: index});
        }
      });
    }
    this.setState({appointments: appointments});

  },
  getInitialState: function(){
    return { appointments: this.props.appointments,
             index: this.props.index};
  },
  render: function() {
    return (
      <div className='appointment-container'>
        <div className='appointment-header'> Make an appointment </div>
        <Appointments
          appointments={ this.state.appointments }
          joinAppointment= { this.joinAppointment }
          index={ this.state.index }/>
      </div>
    );
  }
});
