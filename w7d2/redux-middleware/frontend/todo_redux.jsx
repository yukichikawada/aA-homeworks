import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

const addLoggingToDistpatch = store => next => action => {
  console.log(store.getState());
  console.log(action);
  next(action);
  console.log(store.getState());
};

const applyMiddlewares = (store, ...middleware) => {
  let dispatch = store.dispatch;
  console.log(middleware);
  middleware.forEach((mdlwr) => {
    dispatch = mdlwr(store)(dispatch);
  });

  return Object.assign({}, store, { dispatch });
};

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  let store = configureStore(preloadedState);

  store = applyMiddlewares(store, addLoggingToDistpatch);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});
