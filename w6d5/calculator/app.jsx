import React from 'react';
import ReactDOM from 'react-dom';
import HelloWorld from './hello-world';
import Calculator from './calculator';

document.addEventListener("DOMContentLoaded", () => {
	const root = document.getElementById("root");
	ReactDOM.render(<HelloWorld/>, root);
	ReactDOM.render(<Calculator/>, root);
});
