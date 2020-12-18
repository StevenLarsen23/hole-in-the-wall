import {Switch, Route} from 'react-router-dom'
import Dashboard from './Components/Dashboard/Dashboard'
import Form from './Components/Form/Form'
import Home from './Components/Home/Home'
import Post from './Components/Post/Post'

export default (
    <Switch>
        <Route exact path='/' component={Home}/>
        <Route path='/dashboard' component={Dashboard}/>
        <Route path='/form' component={Form}/>
        <Route path='/post' component={Post}/>
    </Switch>
)