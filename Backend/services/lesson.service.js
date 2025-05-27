const LessonModel = require("../models/lesson.model");
const Sequelize = require("sequelize");
const Topics = require("../models/topic.model");
const Op = Sequelize.Op;

exports.createLesson = (lesson) => {
  console.log(lesson);
  return LessonModel.create(lesson);
};

exports.updateLesson = (lesson, id) => {
  return LessonModel.update(lesson, {
    where: { id: id },
  });
};

exports.deleteLesson = (id) => {
  return LessonModel.destroy({ where: { id: id } });
};

exports.findAll = (page, limit, query, idtopic) => {
  console.log(idtopic);
  const skip = (page - 1) * limit;

  const whereCondition = {
    name: { [Op.like]: `%${query}%` },
  };

  // Add idtopic filter only if idtopic is not null
  if (idtopic !== null) {
    whereCondition.idtopic = idtopic;
  }

  return LessonModel.findAll({
    limit: +limit,
    offset: skip,
    where: whereCondition,
  });
};

exports.getTotal = (idtopic) => {
  if (idtopic) {
    return LessonModel.count({ where: { idtopic } });
  } 
  return LessonModel.count();
};

exports.getTotalAll = () => {
  return LessonModel.count();
};

exports.findByID = (id) => {
  return LessonModel.findByPk(id);
};
