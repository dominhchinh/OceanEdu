const Joi = require("joi");

module.exports = {
  topic: Joi.object().keys({
    name: Joi.string().required(),
    image: Joi.string().required(),
    video: Joi.string().required().pattern(/^[a-zA-Z0-9_-]{11}$/).message('Invalid YouTube Video ID (must be 11 characters)'),
    nameessay: Joi.string().allow("", null),
    contentessay: Joi.string().allow("", null),
    description: Joi.string().allow("", null),
  }),
};
