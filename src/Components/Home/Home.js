import React, {Component} from "react";
import axios from 'axios'

class Home extends Component {
    constructor(){
        super()
        this.state = {
            id: "",
            state_name: "",
            state_img: ""
        }
    }

    componentDidMount(){
            axios.get(`/api/allStates`)
            .then(res => this.setState({
                id: res.data.id,
                state_name: res.data.state_name,
                state_img: res.data.state_img
            }))
    }


    render(){
        const {state_name, state_img} = this.state
        return (
            <div className= 'state-container'>
                <div className= 'state-box'>
                    <h1>{state_name}</h1>
                        
                    
                    <img src={state_img}/>
                        
                </div>
            </div>
        )
    }

}

export default Home