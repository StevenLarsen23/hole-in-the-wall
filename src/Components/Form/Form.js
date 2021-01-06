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
        const { location_id } = locationInput
        await axios
            .post("/api/create", { location_id, nameInput, imgInput, contentInput })
            .catch((err) => console.log(err));

        history.push("/");
    };

    return (
        <div className="div-main">
            <h1 className='form-header'>Add your own favorite Hole-in-the-Wall!</h1>


            <form className="form-main">
                <div>
                    <div>
                        <Dropdown
                            states={states}
                            prompt="Select state..."
                            value={locationInput}
                            onChange={(locationInput) => locationSetInput(locationInput)}
                        />
                    </div>
                </div>
                <input
                    className="input transparencey"
                    type="text"
                    placeholder="Name of place..."
                    value={nameInput}
                    onChange={(e) => nameSetInput(e.target.value)}
                ></input>
                <div>
                    <input
                        className="input transparencey"
                        placeholder="Img URL..."
                        value={imgInput}
                        onChange={(e) => imgSetInput(e.target.value)}
                    ></input>
                </div>
                <div>
                    <textarea
                        className="descrip-box input transparencey"
                        type="text"
                        placeholder="Brief description..."
                        value={contentInput}
                        onChange={(e) => contentSetInput(e.target.value)}
                    ></textarea>
                </div>

                <button className='new-place-btn transparencey' type="submit" onClick={() => {
                    newPost(nameInput, imgInput, contentInput)
                    locationSetInput('');
                    nameSetInput('');
                    imgSetInput('');
                    contentSetInput('');
                }}>Add New Place</button>
            </form>
        </div>
    );
};

export default Form;
