import React from "react";
import "./App.css";
import { Link, Route, Routes } from "react-router-dom";
import About from "./About/About";
import Contact from "./Contact/Contact";
import Home from "./Home/Home";

function App() {
    return (
        <div className="App">
            <header className="App-header">
                <nav className="navbar navbar-expand-lg navbar-light bg-light">
                    <ul className="navbar-nav mr-auto">
                        <li>
                            <Link to={ "/" } className="nav-link">
                                Home{ " " }
                            </Link>
                        </li>
                        <li>
                            <Link to={ "/contact" } className="nav-link">
                                Contact
                            </Link>
                        </li>
                        <li>
                            <Link to={ "/about" } className="nav-link">
                                About
                            </Link>
                        </li>
                    </ul>
                </nav>
            </header>
            <div className="content">
                <Routes>
                    <Route exact path="/home" caseSensitive={ false } element={ <Home /> } />
                    <Route path="/contact" caseSensitive={ false } element={ <Contact /> } />
                    <Route path="/about" caseSensitive={ false } element={ <About /> } />
                    <Route path="*" element={ <Home /> } />
                </Routes>
            </div>
        </div>
    );
}

export default App;
