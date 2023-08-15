function madLib(verb, adjective, noun) {
  return `We shall ${verb} the ${adjective} ${noun}`
};

function isSubstring(string, sub){
 return string.includes(sub);

};

function fizzBuzz(array) {
    const result = [];

    for (let i = 0; i < array.length; i++) {
        if ((array[i] % 3 === 0 || array[i] % 5 === 0) && !(array[i] % 3 === 0 && array[i] % 5 === 0)) {
            result.push(array[i]);
        }
    }

    return result;
}
function fizzBuzz(array) {
  const result = []; 

  for (let i = 0; i < array.length; i++) {

  }
}

function isPrime(n) {
  if (n < 2) { return false; }

  for (let i = 2; i < n; i++) {
    if (n % i === 0) {
      return false;
    };
  };

  return true;
};

function sumofNPrimes(n) {
  let sum = 0; 
  let count = 0;
  let i = 2; 

  while (count < n){
    if (isPrime(i)){
      sum += i;
      count++; 
    }
    i++;
  };

  return sum;
};