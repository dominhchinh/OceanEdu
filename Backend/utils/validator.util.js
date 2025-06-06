module.exports = (schema) => async (req, res, next) => {
  if (schema) {
    try {
      const options = {
        errors: {
          wrap: { label: "" },
        },
        abortEarly: true,
      };
      const body = req.method == "GET" ? req.query : req.body;
      console.log(body, options);
      await schema.validateAsync(body, options);
    } catch (error) {
      return res.status(400).json({ message: error.message, status: false });
    }
  }
  next();
};
