import React, { useState } from "react";
import { useHistory } from "react-router-dom";
import axios from "axios";
import "./Form.css";
import Dropdown from "../Dropdown/Dropdown";
import states from "../Dropdown/states.json";

const Form = () => {
  

  const [locationInput, locationSetInput] = useState('');
  const [nameInput, nameSetInput] = useState('');
  const [imgInput, imgSetInput] = useState('');
  const [contentInput, contentSetInput] = useState('');

  const history = useHistory();

  const newPost = async () => {
      const {location_id} = locationInput
    await axios
      .post("/api/create", { location_id, nameInput, imgInput, contentInput })
      .catch((err) => console.log(err));

    history.push("/");
  };

  //   const handleChange = (e) => {
  //     setData({ ...data, [e.target.name]: e.target.value });
  //   };

  return (
    <div className="div-main">
      <h1>Add your own favorite Hole-in-the-Wall!</h1>

      <form className="form-main">
        <div>
          <input
            className="name-input input"
            type="text"
            placeholder="name of place"
            value={nameInput}
            onChange={(e) => nameSetInput(e.target.value)}
          ></input>
        </div>

        <div>
          <div>
            <Dropdown
              states={states}
              prompt="Select a state..."
              value={locationInput}
              onChange={(locationInput) => locationSetInput(locationInput)}
              />
          </div>
        </div>

        <div>
          <input
            className="img-input input"
            placeholder="img URL"
            value={imgInput}
            onChange={(e) => imgSetInput(e.target.value)}
          ></input>
        </div>
        <div>
          <input
            className="descrip-box"
            type="text"
            placeholder="description"
            value={contentInput}
            onChange={(e) => contentSetInput(e.target.value)}
          ></input>
        </div>

        <button type="submit" onClick={() => {
            newPost(nameInput, imgInput, contentInput )
            locationSetInput('');
            nameSetInput('');
            imgSetInput('');
            contentSetInput('');
        }}>Add New Spot</button>
      </form>
    </div>
  );
};

export default Form;
