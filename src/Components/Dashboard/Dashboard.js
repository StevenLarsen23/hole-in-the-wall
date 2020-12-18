import "./Dashboard.css";

const Dashboard = () => {
  return (
    <div className="dashboard">
      <div className="dash-header">
        <h3 className="welcome">Welcome to the state of:</h3>
        <h1 className="state">Your State Here</h1>
        <h4>Check out some of these great places to eat</h4>
      </div>
      <div>
        <ul className="list">
          <li className='list-items'>
            <img
              alt="R Pizza Place"
              src="https://theswellutah.com/wp-content/uploads/2019/04/R_Pizza_Place_03-1920x1280.jpg"
            />
            <p>R Pizza Place</p>
          </li>
          <li className='list-items'>
            <img
              alt="East Coast Super Subs"
              src="https://fastly.4sqi.net/img/general/600x600/66bCDReuB4wMmyYyMncP3nbB8uHnUMcMyPFzli8A_1Q.jpg"
            />
            <p>East Coast Super Subs</p>
          </li>
        </ul>
      </div>
    </div>
  );
};

export default Dashboard;
