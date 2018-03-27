import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

const addLoggingToDistpatch = (store) => {
  let dispatcher = store.dispatch;
  return (action) => {
    console.log(store.getState());
    console.log(action);
    dispatcher(action);
    console.log(store.getState());
  }
};

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);

  store.dispatch = addLoggingToDistpatch(store);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});
