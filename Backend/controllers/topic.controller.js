const TopicService = require("../services/topic.service");
const LessonService = require("../services/lesson.service");

exports.create = async (req, res) => {
  if (__roleId == 3) {
    return res.status(400).json({
      message: "Unauthorized",
      status: false,
    });
  }

  var dateTimeStamp = parseInt(Date.now() / 1000);

  const topicData = {
    name: req.body.name,
    image: req.body.image,
    video: req.body.video,
    contentessay: req.body.contentessay,
    nameessay: req.body.nameessay,
    description: req.body.description,
    idcreated: __idcreated,
    createdat: dateTimeStamp,
    updatedat: dateTimeStamp,
  };

  const topic = await TopicService.createTopic(topicData);

  return res.json({
    data: topic,
    message: "Tạo chủ đề thành công.",
    status: true,
  });
};

exports.update = async (req, res) => {
  if (__roleId == 3) {
    return res.status(400).json({
      message: "Unauthorized",
      status: false,
    });
  }

  var dateTimeStamp = parseInt(Date.now() / 1000);

  const topicData = {
    name: req.body.name,
    contentessay: req.body.contentessay,
    nameessay: req.body.nameessay,
    image: req.body.image,
    video: req.body.video,
    description: req.body.description,
    idcreated: __idcreated,
    createdat: req.body.createdat,
    updatedat: dateTimeStamp,
  };

  await TopicService.updateTopic(topicData, req.params.id);

  var topic = await TopicService.findByID(req.params.id);

  return res.json({
    data: topic,
    message: "Cập nhật chủ đề thành công.",
    status: true,
  });
};

exports.delete = async (req, res) => {
  if (__roleId == 3) {
    return res.status(400).json({
      message: "Unauthorized",
      status: false,
    });
  }

  // Check if topic has lessons
  const lessons = await LessonService.findAll(1, 1, "", req.params.id);
  if (lessons.length > 0) {
    return res.status(400).json({
      message: "Không thể xóa chủ đề này vì đang có bài học liên quan.",
      status: false,
    });
  }

  await TopicService.deleteTopic(req.params.id);

  return res.json({
    message: "Xóa chủ đề thành công.",
    status: true,
  });
};

exports.getTopics = async (req, res) => {
  var page = req.query.page || 1;
  var limit = req.query.limit || 10;
  var query = req.query.query || "";

  var topics = await TopicService.findAll(page, limit, query);

  var total = await TopicService.getTotal();

  return res.status(200).json({
    results: topics.length,
    total: total,
    data: topics,
    status: true,
  });
};

exports.getTopic = async (req, res) => {
  var topic = await TopicService.findByID(req.params.id);

  return res.status(200).json({
    data: topic,
    status: true,
  });
};
