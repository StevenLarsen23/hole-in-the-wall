import React, { Component } from "react";
import {Link} from 'react-router-dom';
import '../Header/Header.css'

const Header = () => {
    return (
        <div>
            <h1>Header</h1>

    <Link to='/home' className="links"> <button> Home </button> </Link>

    <Link to='/form' className="links"> <button> Add Spot </button> </Link>


        </div>
        
    )
}

export default Header