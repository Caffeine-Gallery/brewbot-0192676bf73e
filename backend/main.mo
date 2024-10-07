import Random "mo:base/Random";

import Array "mo:base/Array";
import Time "mo:base/Time";
import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Text "mo:base/Text";

actor {
  let quotes : [Text] = [
    "I'm not addicted to caffeine. We're just in a very committed relationship.",
    "Life begins after coffee... and maybe some more coffee.",
    "I don't have a problem with caffeine. I have a problem without it.",
    "Caffeine: because adulting is hard.",
    "Behind every successful person is a substantial amount of coffee.",
  ];

  public query func getRandomQuote() : async Text {
    let now = Time.now();
    let seed : Nat = Int.abs(now) % (2**32 - 1);
    let randomIndex = seed % quotes.size();
    quotes[randomIndex]
  };
}
