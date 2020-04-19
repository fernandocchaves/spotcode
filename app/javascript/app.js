import 'react-bulma-components/dist/react-bulma-components.min.css';
import './assests/style/app.scss';

import React, { Fragment } from 'react';
import { BrowserRouter } from 'react-router-dom'
import Routes from './routes';
import Menu from './components/common/menu'


const App = () => {
  return (
    <Fragment>
      <BrowserRouter>
        <Menu />
        <Routes />
      </BrowserRouter>
    </Fragment>
  );
}
export default App;