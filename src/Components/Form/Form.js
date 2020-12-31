import React, { useState } from 'react';
import { useHistory } from 'react-router-dom';
import axios from 'axios';

const Form = () => {

    const [data, setData] = useState();

    const history = useHistory();

   
    const newPost = async () => {
        const { name, img, content } = data
        await axios.post("/api/create", { name, img, content })
            .catch(err => console.log(err))

        history.push('/')
    }


    const handleChange = e => {
        setData({ ...data, [e.target.name]: e.target.value });
    }

    return (
        <form onSubmit={newPost} >
            <div>
                <input type='text' placeholder='name of place' onChange={e => handleChange(e)} ></input>
            </div>

            <div>
                <input type='text' placeholder='location of place' onChange={e => handleChange(e)} ></input>
            </div>

            <div>
                <input type='image' ></input>

            </div>
            <div>
                <input type='text' placeholder='description of new location' onChange={e => handleChange(e)} ></input>
            </div>

            <button type='submit'>Add New Spot</button>
        </form>
    )
}

export default Form