import React, { useState, useEffect } from 'react';
import axios from 'axios';

const Form = () => {

    const [data, setData] = useState()
    const [post, setPost] = useState()

    useEffect(() => {
        const makePost = async (location_id, name, img, content) => {
            try {
                const res = await axios.post('/api/create', {location_id, name, img, content})
                setPost(res.data)
            }
            catch (err) {
                console.log(err)
            }
        }
        makePost()
    }, []);


    const handleChange = e => {
        setData({ ...data, [e.target.name]: e.target.value });
    }

    return (
        <div>This is the Form Component
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


            <button>Create Spot</button>
        </div>
    )
}

export default Form