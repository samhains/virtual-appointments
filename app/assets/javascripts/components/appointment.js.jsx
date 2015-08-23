var Appointment = React.createClass({
  joinAppointment: function(){
    this.props.joinAppointment(this.props.index);
  },
  render: function() {
    var date = moment(this.props.appointment.date).format('MMMM Do YYYY, h:mm:ss a');
    return (
        <div className={'appointment-btn'+this.props.selectedClass} onClick={this.joinAppointment}>
          <div className='appointment-date'>{date},

            <span className='appointment-capacity'>   available space: {this.props.appointment.attending + "/"+ this.props.appointment.capacity }</span>
          </div>
        </div>
    );
  }
});
