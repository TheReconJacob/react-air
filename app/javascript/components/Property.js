import React from "react";
import { relative } from "path";
document.body.style = "background: #F1F1F1;";

const Property = props => {
  return (
    <section>
      <div
        style={{
          backgroundColor: "white"
        }}
      >
        <img
          src="https://i.ibb.co/wzWgtmr/812ac0e9-b573-49e4-af6c-9033dcabdf53-200x200.png"
          alt="89d2a255-9b73-415c-bba6-6e272a12b791-200x200"
          border="0"
          style={{ position: "relative", left: "44.25%" }}
        />
      </div>

      <h4
        style={{
          position: "relative",
          textAlign: "center",
          borderLeft: "20px solid #F1F1F1",
          borderRight: "20px solid #F1F1F1",
          top: "180px",
          backgroundColor: "white",
          height: "100px"
        }}
      >
        Properties: {props.properties.length}
      </h4>
      <div
        style={{
          position: "relative",
          backgroundColor: "white",
          overflow: "auto",
          borderLeft: "20px solid #F1F1F1",
          borderRight: "20px solid #F1F1F1",
          borderBottom: "20px solid #F1F1F1",
          top: "100px",
          height: "500px"
        }}
      >
        {props.properties.map(p => (
          <div
            style={{
              position: "relative",
              top: "40px",
              borderTop: "3px solid #C1C1C1"
            }}
          >
            <img
              src={p.image}
              style={{ width: "16rem", height: "16rem", padding: "10px" }}
            />
            <p style={{ textAlign: "left", display: "inline" }}>
              {" "}
              {p.location} - {p.description}
            </p>{" "}
            <br />
            <i
              style={{
                position: "relative",
                left: "85%",
                bottom: "137.5px"
              }}
            >
              Property Owner: {p.user.username}
            </i>
          </div>
        ))}
      </div>
    </section>
  );
};

export default Property;
