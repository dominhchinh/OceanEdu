import _random from "lodash/random";

export const parserRouter = (router, id) => {
  return router.replace(":id", id);
};

export const speak = (text) => {
  const speechSynthesis = window.speechSynthesis;
  const utterance = new SpeechSynthesisUtterance(text);

  const voices = speechSynthesis.getVoices();

  const randomVoice = voices[_random(0, voices.length - 1)];

  utterance.voice = randomVoice;

  speechSynthesis.speak(utterance);
};
