import React, {Component} from "react";
import axios from 'axios'
import { Link } from "react-router-dom"

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
                <div classname='home' key={e.id}>

                    <div classname='container'>

                        <div classname='stateName'>

                            {e.state_name}

                        </div>

                        <div classname='stateImg'>

                            <img
                            src={e.state_img} alt={e.state_name}
                            />

                        </div>

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