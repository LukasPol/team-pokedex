import React from 'react'
import { render } from "react-dom";
// import App from "../components/App";
import Home from "../components/Home";
import { BrowserRouter as Router, Route } from "react-router-dom";

console.log('AAA')

document.addEventListener("DOMContentLoaded", () => {
  render(
    <Router>
      <Route path="/" component={Home} />
    </Router>,
    // <Home />,
    document.body.appendChild(document.createElement("div"))
  );
});
