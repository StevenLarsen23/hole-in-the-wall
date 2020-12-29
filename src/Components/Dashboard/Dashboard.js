import "./Dashboard.css";
import { Component } from "react";
import axios from "axios";

class Dashboard extends Component {
  constructor() {
    super();
    this.state = {
      posts: [],
      location: {},
    };
  }
  componentDidMount() {
    return axios.get('/api/allStates').then((res) => {
      this.setState({
        location: res.data
      })
    })
  }

  componentDidMount() {
    return axios.get("/api/allPosts").then((res) => {
      this.setState({
        posts: res.data,
      });
    });
  }


  render() {

    const posts = this.state.posts.map((posts, i) => {
      return (
        <div>
          <img src={posts.img} alt={posts.name}/>
          <li key={`${posts.id}-${i}`}>{posts.name}</li>
        </div>
      );
    });
    return (
      <div className="dashboard">
        <div className="dash-header">
          <h3 className="welcome">Welcome to the state of:</h3>
          {/* <h1 className="state">{state}</h1> */}
          <h4>Check out some of these great places to eat</h4>
        </div>
        <div>
          <ul className="list">
            <li className="list-items">
              {posts}
            </li>
          </ul>
        </div>
      </div>
    );
  }
}

export default Dashboard;
