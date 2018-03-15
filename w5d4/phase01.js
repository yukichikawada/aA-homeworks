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
