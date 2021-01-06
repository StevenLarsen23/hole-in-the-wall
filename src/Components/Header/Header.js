import {Link} from 'react-router-dom';
import '../Header/Header.css'
import holeinwall from "../Header/holeinwall2.png";


const Header = () => {
    return (
        <div className='header'>
            <div className='homebutton'>
            <Link to='/' className="links">
                <img className='icon' src={holeinwall} alt="" height="50" width="50" /> <br/>
                <div className='header-home'>HOME</div>
            </Link>
            
            </div>

            <Link to='/form'  className="links">  
                <button className='add-btn'>Add Place</button>
            </Link>
        </div>
    )
}

export default Header