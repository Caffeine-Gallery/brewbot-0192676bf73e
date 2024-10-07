export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'getRandomQuote' : IDL.Func([], [IDL.Text], ['query']),
  });
};
export const init = ({ IDL }) => { return []; };
