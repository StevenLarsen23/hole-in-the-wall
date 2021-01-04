
import React, { useState, useRef, useEffect } from 'react';
import './Dropdown.css';

const Dropdown = ({ states, prompt, value, onChange }) => {

    const [open, setOpen] = useState(false);
    const [query, setQuery] = useState('');
    const ref = useRef(null);

    // This useEffect and the 'close' function below allow us to click outside of the dropdown menu and make it close
    useEffect(() => {
        document.addEventListener('click', close)
        return document.addEventListener('click', close)
    }, [])

    const close = (e) => {
        setOpen(e && e.target === ref.current)
    }

    const filter = (states) => {
        return states.filter((state) => state.name.toLowerCase().indexOf(query.toLowerCase()) > -1)
    }

    const displayValue = () => {
        if (query.length > 0) return query
        if (value) return value.name
        return ''
    }


    return (
        <div className='dropdown'>
            <div className='control' onClick={() => setOpen((prev) => !prev)}>
                <div className='selected-value' >
                    <input
                        type='text'
                        ref={ref}
                        placeholder={value ? value.name : prompt}
                        value={displayValue()}
                        onChange={e => {
                            setQuery(e.target.value)
                            onChange(null)
                        }}
                        onClick={() => setOpen(prev => !prev)}>
                    </input>
                </div>
                <div className={`arrow ${open ? 'open' : null}`}>
                </div>
            </div>
            <div className={`options ${open ? 'open' : null}`}>
                {filter(states).map((state, index) => (
                    <div key={index} className={`option ${value === state ? 'selected' : null}`}
                        onClick={() => {
                            setQuery('')
                            onChange(state);
                            setOpen(false);
                        }}
                    >{state.name}</div>))}
            </div>
        </div>
    )
}

export default Dropdown