import React, { Component } from "react";
import axios from "axios";
import "./Post.css";
// import { connect } from 'react-redux'
import { googleApiKey } from '../../data/privateKeys'
import { Link } from 'react-router-dom';

class Post extends Component {
  constructor(props) {
    super(props);


    this.state = {
      name: "",
      img: "",
      content: "",
      usState: "",
      post: [],
      postid: 0,
    };
  }

  componentDidMount() {
    let id = this.props.match.params.postid;

    axios
      .get(`/api/onePost/${id}`)
      .then((res) => {
        const post = res.data[0];
        this.setState({
          img: post.img,
          content: post.content,
          name: post.name,
          postid: post.id,
          usState: post.state_name,
        });
        console.log(this.state.img);
      })
      .catch((err) => console.log(err));
  }


  deleteById() {
    let id = this.props.match.params.postid;
    console.log(id)
    axios
      .delete(`/api/delete/${id}`)
      .then(() => {
        this.props.history.push('/dashboard')
      })
      .catch(err => console.log(err));

  }

  render() {
    const { img, content, name, usState } = this.state;
    let id = this.props.match.params.postid;
    return (
      <div className='post-main'>

        <div className='post-header'><h2>{name}</h2></div>
        <div className='post-header-two'><h4>{usState}</h4></div>

        <div className="top-post">
          <img className="img" src={img} alt={`${name}`} />
          <div className='api-main'>

            <iframe
              title="google maps"
              frameborder="0"
              src={`https://www.google.com/maps/embed/v1/place?key=${googleApiKey}&q=${name},${usState}`}
              allowfullscreen
            ></iframe>

          </div>
        </div>

        <div className='post-content'>
          <p>{content}</p>
        </div>

        <button className='post-btn' onClick={() => { this.deleteById(); }}>Delete</button>

        <Link to={`/edit/${id}`}><button>Edit</button></Link>

      </div>
    );
  }
}

export default Post;
