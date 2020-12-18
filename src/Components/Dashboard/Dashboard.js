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
          <ul>
              <li>
                  <img alt=''/>
              </li>
          </ul>
      </div>
    </div>
  );
};

export default Dashboard;
