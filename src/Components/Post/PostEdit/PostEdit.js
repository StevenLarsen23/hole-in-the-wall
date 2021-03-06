import React, {Component} from 'react';
import axios from 'axios';
import "../PostEdit/PostEdit.css"
// import { connect } from 'react-redux'
import { Link } from 'react-router-dom';

class Post extends Component {
    constructor(props) {
        super(props);
        
        this.state = {
            name: '',
            img: '',
            content: '',
            post: [],
            postid: 0
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
                name: post.name,
                postid: post.id
             });
             console.log(this.state.img)
          })
          .catch(err => console.log(err));
      }

      editById(name, img, content) {
        let id = this.props.match.params.postid;
        axios
          .put(`/api/edit/${id}`, { name, img, content})
          .then(res => {
            console.log(res.data);
            this.setState({ post: res.data });
          })
          .catch(err => console.log(err));
      }

      handleChange(e){
        this.setState({
            [e.target.name]: e.target.value
        })
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
        let id = this.props.match.params.postid;
        return (
            <div>
                <div className="topPost">
                    Title:
                  <br></br>
                    <input type="text" placeholder="Title" defaultValue={name} onChange={(e) => this.handleChange(e)} name="name"/>
                    <br></br>
                    <img className='img' alt={`${name}`} src={img}/>
                    <br></br>
                    <br></br>


                    <textarea name='content' defaultValue={content} className="commenttext"  cols="50" rows="10" onChange={(e) => this.handleChange(e)}></textarea>
                    
                </div>
                <br></br>
                <br></br>
                <Link to={`/post/${id}`}>
                    <button>Cancel</button>
                </Link>
                
                <Link to={`/post/${id}`}>
                    <button onClick={() => this.editById(name, img, content)}>Save</button>
                </Link>
                
                <br></br>
                <br></br>

            </div>
        )
    }
}

export default Post;