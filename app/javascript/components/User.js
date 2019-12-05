import React from "react";
import PropTypes from "prop-types";
import "../../assets/stylesheets/application.css";
class User extends React.Component {
  render() {
    const { username, password_digest } = this.props.user;
    return (
      <div>
        User: {username}
        <br />
        Password: {password_digest}
        <a href="/logout"></a>
      </div>
    );
  }
}

User.propTypes = {
  user: PropTypes.object
};
export default User;
