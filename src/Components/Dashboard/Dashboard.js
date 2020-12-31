import "./Dashboard.css";
import { Component } from "react";
import axios from "axios";
import { Link } from "react-router-dom";

class Dashboard extends Component {
  constructor(props) {
    super(props);
    this.state = {
      posts: [],
      usState: {},
    };
  }

  async componentDidMount() {
    let { stateid } = this.props.match.params;
    let posts = await axios.get(`/api/statePost/${+stateid}`);
    let usState = await axios.get(`/api/oneState/${+stateid}`);
    this.setState({
      posts: posts.data,
      usState: usState.data,
    });
  }

  render() {
    const { posts, usState } = this.state;
    const post = posts.map((e, i) => {
      return (
        <div className="list-items">
          <Link className="links" to={`/post/${e.id}`}>
            <img src={e.img} alt={e.name} />
            <p key={`${e.id}-${i}`}>{e.name}</p>
          </Link>
        </div>
      );
    });
    return (
      <div className="dashboard">
        <div className="dash-header">
          {usState.id === 5 || usState.id === 43 ? (
            <h3 className="welcome">Welcome to the Mediocre state of:</h3>
          ) : (
            <h3 className="welcome">Welcome to the Great state of:</h3>
          )}
          <h1 className="state">{usState.state_name}</h1>
          <h4>Check out some of these great places to eat</h4>
        </div>
        {posts.length === 0 ? (
          <h1>
            <br />
            <br />
            <br />
            <br />
            <Link to="/form" className="links">
              {`No restaurants have been added for ${usState.state_name}.`}
              <br />
              Be the first to add one.
            </Link>
          </h1>
        ) : (
          <ul className="list">
            <li>{post}</li>
          </ul>
        )}
      </div>
    );
  }
}

export default Dashboard;
