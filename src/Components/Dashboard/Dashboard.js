import "./Dashboard.css";
import { Component } from "react";
import axios from "axios";
import { Link } from 'react-router-dom'

class Dashboard extends Component {
  constructor(props) {
    super(props);
    this.state = {
      posts: [],
      usState: {},
    };
  }

  async componentDidMount() {
    let posts = await axios.get("/api/allPosts")
    let usState = await axios.get(`/api/oneState/${+this.props.match.params.stateid}`)
      this.setState({
        posts: posts.data,
        usState: usState.data
      });
    ;
  }

  render() {
    const { posts, usState } = this.state;
    const post = posts.map((post, i) => {
      return (
        <div>
          {+this.props.match.params.stateid === post.location_id ? (
            <div className='list-items'>
              <Link className='links'
              to={`/post/${post.id}`}>
              <img src={post.img} alt={post.name} />
              <p key={`${post.id}-${i}`}>{post.name}</p>
              </Link>
            </div>
          ) : null}
        </div>
      );
    });
    return (
      <div className="dashboard">
        <div className="dash-header">
          <h3 className="welcome">Welcome to the state of:</h3>
          <h1 className="state">{usState.state_name}</h1>
          <h4>Check out some of these great places to eat</h4>
        </div>
        <ul className="list">
          <li>{post}</li>
        </ul>
      </div>
    );
  }
}

export default Dashboard;
