import {Link} from 'react-router-dom';
import '../Header/Header.css'
import holeinwall from "../Header/holeinwall2.png";

const Header = () => {
    return (
        <div className='header'>
            <div className='homebutton'>
            <Link to='/' className="links">
                <img src={holeinwall} alt="" height="50" width="50" />
            </Link>
            
            </div>

            <Link to='/' className="links">  
                HOME  
            </Link>

            <Link to='/form'  className="links">  
                ADD SPOT  
            </Link>


        </div>
        
    )
}

export default Header