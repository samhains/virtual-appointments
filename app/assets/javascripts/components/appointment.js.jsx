var Appointment = React.createClass({
  joinAppointment: function(){
    this.props.joinAppointment(this.props.index);
  },
  render: function() {
    return (
      <div>
        <div onClick={this.joinAppointment}>
          <a>{ this.props.appointment.date } </a>
          <p> {this.props.appointment.attending + "/"+ this.props.appointment.capacity }</p>
        </div>
      </div>
    );
  }
});
