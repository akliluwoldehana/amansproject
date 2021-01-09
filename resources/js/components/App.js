import React from 'react';
import ReactDOM from 'react-dom';

import 'bootstrap/dist/css/bootstrap.min.css';

import Navbar from './Navbar';
import Landing from "./Landing";

function App() {
    return (
        <div>
            <Navbar />
            <Landing />
        </div>
    );
}

export default App;

if (document.getElementById('root')) {
    ReactDOM.render(
        <App />,
        document.getElementById('root')
    );
}
