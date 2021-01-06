import React, {Component} from "react";
import axios from 'axios'
import { Link } from "react-router-dom"
import "../Home/Home.css"

class Home extends Component {
    constructor(){
        super()
        this.state = {
            home: []
        }
    }

    componentDidMount(){
            axios.get(`/api/allStates`)
            .then(res => this.setState({
                home: res.data
            }))
    }


    render() {
        const { home } = this.state
        const displayHome = home.map((e) => {
            return (
                <div className='home' key={e.id}>
                    <div className='container'>
                        <Link to= {`/dashboard/${e.id}`} className="Links">
                            <div className='stateName'>{e.state_name}</div>

                            <img className="stateImg" src={e.state_img} alt={e.state_name}/> 

                        </Link>
                    </div>
                </div>
            )
        })
        return (
            <div className="grid">{displayHome}</div>
        )
    }

}

export default Home
