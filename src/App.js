import './App.css';
import Header from './Components/Header/Header'
import routes from './routes'


function App() {
  return (
    <div className="App">
      {console.log(process.env)}
      <Header/>
      {routes}
    </div>
  );
}

export default App;
