const initialState = {
  baseCurrency: "Please select",
  rates: {}
};

let action ={
  type: "SWTICH_CURRENCY",
  baseCurrency: "test",
  rates: {"AUD": 3, "USD": 2, "JPY": 5}
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case "SWITCH_CURRENCY":
      return {
        baseCurrency: action.baseCurrency,
        rates: action.rates
      };
    default:
    return state; // remove this and fill out the body of the reducer function
  }
};

export default reducer;
