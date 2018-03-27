import { createStore, applyMiddleware } from 'redux';
import rootReducer from '../reducers/root_reducer';

const addLoggingToDistpatch = store => next => action => {
  console.log(store.getState());
  console.log(action);
  next(action);
  console.log(store.getState());
};

const configureStore = (preloadedState = {}) => {
  const store = createStore(
    rootReducer,
    preloadedState,
    applyMiddleware(addLoggingToDistpatch)
  );

  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });

  return store;
}

export default configureStore;
