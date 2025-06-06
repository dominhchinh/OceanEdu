const LessonService = require('../services/lesson.service');
const AuthService = require('../services/auth.service');
const TopicService = require('../services/topic.service');

exports.create = async (req, res) => { 

    if(__roleId == 3) {
        return res.status(400).json({ 
            message: 'Unauthorized',
            status: false
        });
    }

    var dateTimeStamp = parseInt(Date.now()/1000);

    const lessonData = {
        name: req.body.name,
        image: req.body.image,
        sound: req.body.sound,
        idtopic: req.body.idtopic,
        idcreated: __idcreated,
        idshared: __idcreated,
        createdat: dateTimeStamp,
        updatedat: dateTimeStamp,
    }
    
    const lesson = await LessonService.createLesson(lessonData);
    
    return res.json({
        data: lesson,
        message: 'Tạo bài học thành công.',
        status : true
    });
}


exports.update = async (req, res) => { 

    if(__roleId == 3) {
        return res.status(400).json({ 
            message: 'Unauthorized',
            status: false
        });
    }

    var dateTimeStamp = parseInt(Date.now()/1000);

    

    const lessonData = {
        name: req.body.name,
        image: req.body.image,
        sound: req.body.sound,
        idtopic: req.body.idtopic,
        idcreated: __idcreated,
        idshared: __idcreated,
        createdat:req.body.createdat,
        updatedat: dateTimeStamp,
    }
    
    await LessonService.updateLesson(lessonData,req.params.id);

    var lesson = await LessonService.findByID(req.params.id);

    return res.json({
        data: lesson,
        message: 'Cập nhật bài học thành công.',
        status : true
    });
}

exports.delete = async (req, res) => { 
    if(__roleId == 3) {
        return res.status(400).json({ 
            message: 'Unauthorized',
            status: false
        });
    }

    await LessonService.deleteLesson(req.params.id);

    return res.json({
        message: 'Xóa bài học thành công.',
        status : true
    });
}


exports.getLessons = async (req, res) => {
    var page = req.query.page || 1;
    var limit = req.query.limit || 10;
    var query = req.query.query || "";
    var idtopic = req.query.idtopic || null;

    var lessons = await LessonService.findAll(page, limit, query, idtopic);

    lessons = await Promise.all(lessons.map(async (lesson) => {
        var createdid = await AuthService.findUserById(lesson.dataValues.idcreated);
        var topic = await TopicService.findByID(lesson.dataValues.idtopic);
        lesson.dataValues.created = createdid;
        lesson.dataValues.topic = topic;
        return lesson;
    }));

    var total = await LessonService.getTotal(idtopic);

    return res.status(200).json({
        results: lessons.length,
        total: total,
        data: lessons, 
        status: true
    });
   
};


exports.getLesson = async (req, res) => { 

    var lesson = await LessonService.findByID(req.params.id);

    var createdid = await AuthService.findUserById(lesson.idcreated);
    var idtopic = await TopicService.findByID(lesson.idtopic);

    lesson.dataValues.created=createdid
    lesson.dataValues.topic=idtopic

    return res.status(200).json({
        data: lesson,
        status : true
    });
}

