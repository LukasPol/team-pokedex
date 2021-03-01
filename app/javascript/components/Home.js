import React from "react";

const home = () => {
  return (
    <div className="vw-100 vh-100 primary-color d-flex align-items-center justify-content-center">
      <div className="jumbotron jumbotron-fluid bg-transparent">
        <div className="container secondary-color">
          <h1 className="display-4">Times de Pokemons</h1>
          <p className="lead">
            Venha montar seu time de até 6 jogadores
          </p>
          <hr className="my-4" />
          <a href="/teams" className="btn btn-lg btn-secondary">Ver os times</a>
        </div>
      </div>
    </div>
  )
};

export default home;