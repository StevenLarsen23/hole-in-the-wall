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
        console.log(home)
        const displayHome = home.map((e) => {
            return (
                <div className='home' key={e.id}>
                    <div className='container'>
                        <Link to= {`/dashboard/${e.id}`} className="Links">

                            <div className='stateName'>{e.state_name}</div>

                            <div className='stateImg'> <img src={e.state_img} alt={e.state_name}/> </div>

                        </Link>
                    </div>
                </div>
            )
        })
        return (
            <div>{displayHome}</div>
        )
    }

}

export default Home