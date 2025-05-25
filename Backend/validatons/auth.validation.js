const Joi = require("joi");

module.exports = {
  register: Joi.object().keys({
    username: Joi.string().required(),
    email: Joi.string().email().required(),
    password: Joi.string().min(6).required(),
    roleid: Joi.number().required(),
    birthday: Joi.string(),
    image: Joi.string().allow("", null),
  }),
  login: Joi.object().keys({
    email: Joi.string().email().required(),
    password: Joi.string().required(),
  }),
};
