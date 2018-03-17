import _ from 'lodash';

function component() {
  var element = document.createElement('div');

  element.innerHTML = _.join(['Hello', 'webpack', ':', 'npm', 'run', 'build'], ' ');

  return element;
}

document.body.appendChild(component());
