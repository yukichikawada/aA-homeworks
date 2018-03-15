// Phase 1
function madLib(verb, adjective, noun) {
  var verbU = verb.toUpperCase();
  var adjU  = adjective.toUpperCase();
  var nounU = noun.toUpperCase();
  return `We shall ${verbU} the ${adjU} ${nounU}.`;
}

function isSubstring(searchString, substring) {
  return searchString.includes(substring);
}

// Phase 2
function fizzBuss(array) {
  const arr = [];

  array.forEach(el => {
    if ((el % 3 === 0) ^ (el % 5 === 0)) {
      arr.push(el);
    }
  });

  return arr;
}

function isPrime(n) {
  // assume positive
  if (n < 2) { return false; }

  for (let i = 2; i < n; i++) {
    if (n % i === 0) {
      return false;
    }
  }

  return true;
}

function sumOfNPrimes(n) {
  // use isPrime
  let sum = 0;
  let sumCount = 0;

  for (let i = 2; sumCount < n; i++) {
    if (isPrime(i)) {
      sum += i;
      sumCount++;
    }
  }

  return sum;
}
