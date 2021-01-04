import React, { useState } from 'react';
import { useHistory } from 'react-router-dom';
import axios from 'axios';
import './Form.css';
import Dropdown from '../Dropdown/Dropdown';
import states from '../Dropdown/states.json';

const Form = () => {

    const [data, setData] = useState();
    const [value, setValue] = useState(null);

    const history = useHistory();


    const newPost = async () => {

        const { location_id, name, img, content } = data
        await axios.post("/api/create", { location_id, name, img, content })

            .catch(err => console.log(err))

        history.push('/')
    }


    const handleChange = e => {
        setData({ ...data, [e.target.name]: e.target.value });
    }
    
    return (

    

        <div className='div-main'>
            <h1>Add your own favorite Hole-in-the-Wall!</h1>

            <form className='form-main' onSubmit={newPost} >
                <div>
                    <input className='name-input input'
                        type='text'
                        placeholder='name of place'
                        onChange={e => handleChange(e.name)} >
                    </input>
                </div>


                <div>
                    <div >
                        <Dropdown
                            states={states}
                            prompt='Select a state...'

                            // value={value.location_id}

                            onChange={val => setValue(val)}
                        />
                    </div>
                </div>

                <div>
                    <input
                        className='img-input input'
                        placeholder='img URL'>
                    </input>

                </div>
                <div>
                    <input
                        className='descrip-box'
                        type='text'
                        placeholder='description'
                        onChange={e => handleChange(e)} >

                    </input>
                </div>

                <button type='submit'>Add New Spot</button>
            </form>
        </div>
    )
}

export default Form