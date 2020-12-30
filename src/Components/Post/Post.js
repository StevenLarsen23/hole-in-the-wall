import React, {Component} from 'react';
import axios from 'axios';
import "./Post.css"
// import { connect } from 'react-redux'
// import { Link } from 'react-router-dom';

class Post extends Component {
    constructor(props) {
        super(props);
        
        this.state = {
            name: '',
            img: '',
            content: '',
            post: [],
        }
    }

    componentDidMount() {
        let id = this.props.match.params.postid;
        console.log(id);
        axios
          .get(`/api/onePost/${id}`)
          .then(res => {
              const post = res.data[0]
            this.setState({ 
                img: post.img,
                content: post.content,
                name: post.name
             });
             console.log(this.state.img)
          })
          .catch(err => console.log(err));
      }

    //   deleteById() {
    //     let id = this.props.match.params.postid;
    //     console.log(id)
    //     axios
    //       .delete(`/api/post/${id}`)
    //       .then(() => {
    //         this.props.history.push('/dashboard')
    //       })
    //       .catch(err => console.log(err));
          
    //   }

    render() {
        const {img, content, name} = this.state;
        return (
            <div>
                <div className="topPost">
                    <h2>{name}</h2>
                    <br></br>
                    <img className='img' src={img}/>
                    <br></br>
                    <br></br>
                    {content}
                    
                </div>
                <br></br>
                <br></br>
                <button onClick={()=>{
            this.deleteById();}}>Delete</button>
                {/* <Link to={`/edit/${id}`}><button>Edit</button></Link> */}
                <br></br>
                <br></br>
                Comment as username
                <br></br> 
                <input type='text' placeholder='What are your thoughts?'></input>
                <button>Comment</button>

            </div>
        )
    }
}

export default Post;