import React from "react";
import PropTypes from "prop-types";
import "../../assets/stylesheets/application.css";
import { relative } from "path";
import axios from "axios";
class User extends React.Component {
  state = {
    selectedFile: null
  };
  fileSelectedHandler = event => {
    this.setState({
      selectedFile: event.target.files[0]
    });
  };
  fileUploadHandler = () => {
    const fd = new FormData();
    fd.append("image", this.state.selectedFile, this.state.selectedFile.name);
    axios.post("/users/${id}/properties", fd).then(res => {
      console.log(res);
    });
  };
  render() {
    const { id, username, password_digest } = this.props.user;
    return (
      <div
        style={{
          position: "relative",
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
          top: "20px",
          left: "15%"
        }}
      >
        <img
          src="https://lakewangaryschool.sa.edu.au/wp-content/uploads/2017/11/placeholder-profile-sq.jpg"
          style={{
            width: "100px"
          }}
        />
        <h1
          style={{
            padding: "20px"
          }}
        >
          {username}
        </h1>

        <p
          style={{
            position: "relative",
            top: "100px",
            right: "30%"
          }}
        >
          Hi, I'm Jacob.
        </p>
        <form
          enctype="multipart/form-data"
          action={`/users/${id}/properties`}
          method="POST"
          style={{
            position: "relative",
            top: "200px",
            right: "27.5%"
          }}
        >
          Property Name:
          <br />
          <input
            type="text"
            name="propertyname"
            placeholder="Property"
            style={{
              width: "400px"
            }}
          />
          <br />
          <br />
          Description:
          <br />
          <input
            type="text"
            name="description"
            placeholder="Description"
            style={{
              position: "absolute",
              width: "400px",
              height: "100px"
            }}
          />
          <br />
          <div>
            <input
              type="file"
              style={{ position: "absolute", top: "130%" }}
              onChange={this.fileSelectedHandler}
            />
          </div>
          <br />
          <input
            onClick={this.fileUploadHandler}
            type="submit"
            value="Submit"
            style={{
              position: "relative",
              top: "120px"
            }}
          />
        </form>

        {/* Password: {password_digest} */}
        <a href="/logout"></a>
      </div>
    );
  }
}

User.propTypes = {
  user: PropTypes.object
};
export default User;
