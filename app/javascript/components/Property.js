import React from "react"

const Property = props => {
  return (
    <section>
      <h1>React-Air {props.properties.length}</h1>
      {props.properties.map(p => (
        <div>
          <img src={p.image} style={{width: "3rem", height: "3rem"}}/>
          {p.location} {p.description} <i>{p.user.username}</i>
        </div>
      ))}
    </section>
  )
}

export default Property
