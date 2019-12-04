import React from "react";
import PropTypes from "prop-types";
class User extends React.Component {
  render() {
    const { name, password_digest } = this.props.user;
    return (
      <div>
        User: {name} {password_digest}
        <a href="/logout"></a>
      </div>
    );
  }
}

User.propTypes = {
  user: PropTypes.object
};
export default User;
