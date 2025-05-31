const AuthService = require("../services/auth.service");
const jwtConfig = require("../config/jwt.config");
const bcryptUtil = require("../utils/bcrypt.util");
const jwtUtil = require("../utils/jwt.util");
const path = require("path");
const fs = require("fs");
const { type } = require("os");

exports.register = async (req, res) => {
  const isExist = await AuthService.findUserByEmail(req.body.email);
  if (isExist) {
    return res.status(400).json({
      message: "Email đã tồn tại.",
    });
  }
  const hashedPassword = await bcryptUtil.createHash(req.body.password);
  var dateTimeStamp = parseInt(Date.now() / 1000);

  const userData = {
    username: req.body.username,
    email: req.body.email,
    image: req.body.image,
    birthday: req.body.birthday,
    roleid: req.body.roleid,
    active: 1,
    password: hashedPassword,
    createdat: dateTimeStamp,
    updatedat: dateTimeStamp,
  };
  const user = await AuthService.createUser(userData);
  return res.json({
    data: user,
    message: "Đăng ký thành công.",
  });
};

exports.login = async (req, res) => {
  const user = await AuthService.findUserByEmail(req.body.email);
  console.log(user);
  if (user != null) {
    // Check if account is active
    if (!user.active) {
      return res.status(400).json({ message: "Tài khoản đã bị vô hiệu hóa." });
    }
    const isMatched = await bcryptUtil.compareHash(
      req.body.password,
      user.password
    );
    console.log(user.password);
    if (isMatched) {
      __idcreated = user.id;
      __roleId = user.roleid;
      const token = await jwtUtil.createToken({ id: user.id });
      return res.json({
        user: user,
        access_token: token,
        token_type: "Bearer",
        expires_in: jwtConfig.ttl,
        id: __idcreated,
      });
    }
  }
  return res.status(400).json({ message: "Unauthorized." });
};

exports.getUser = async (req, res) => {
  const user = await AuthService.findUserById(req.user.id);
  return res.json({
    data: user,
    message: "Success.",
  });
};

exports.logout = async (req, res) => {
  await AuthService.logoutUser(req.token, req.user.exp);
  return res.json({ message: "Đăng xuất thành công." });
};

exports.getUsers = async (req, res) => {
  if (__roleId == 3) {
    return res.status(400).json({
      message: "Unauthorized",
      status: false,
    });
  }

  var page = req.query.page || 1;
  var limit = req.query.limit || 10;
  var query = req.query.query || "";

  var users = await AuthService.findAll(page, limit, query);
  var total = await AuthService.getTotal();

  return res.status(200).json({
    results: users.length,
    total: total,
    data: users,
    status: true,
  });
};

exports.getUser = async (req, res) => {
  var user = await AuthService.findByID(req.params.id);

  return res.status(200).json({
    data: user,
    status: true,
  });
};

exports.updateUser = async (req, res) => {
  var dateTimeStamp = parseInt(Date.now() / 1000);

  const isExist = await AuthService.findUserByEmail(req.body.email);

  let hashedPassword = req.body.password;
  if (isExist.password !== req.body.password) {
    hashedPassword = await bcryptUtil.createHash(req.body.password);
  }

  const userData = {
    username: req.body.username,
    email: req.body.email,
    image: req.body.image,
    birthday: req.body.birthday,
    active: req.body.active,
    roleid: req.body.roleid,
    password: hashedPassword,
    createdat: req.body.createdat,
    updatedat: dateTimeStamp,
  };

  await AuthService.update(userData, req.params.id);

  const user = await AuthService.findByID(req.params.id);

  return res.json({
    data: user,
    message: "Cập nhật người dùng thành công.",
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

  const isExist = await AuthService.findUserByEmail(req.body.email);

  let hashedPassword = req.body.password;
  if (isExist.password !== req.body.password) {
    hashedPassword = await bcryptUtil.createHash(req.body.password);
  }

  const userData = {
    username: req.body.username,
    email: req.body.email,
    image: req.body.image,
    birthday: req.body.birthday,
    active: req.body.active,
    roleid: req.body.roleid,
    password: hashedPassword,
    createdat: req.body.createdat,
    updatedat: dateTimeStamp,
  };

  await AuthService.update(userData, req.params.id);

  const user = await AuthService.findByID(req.params.id);

  return res.json({
    data: user,
    message: "Cập nhật người dùng thành công.",
    status: true,
  });
};

exports.setActive = async (req, res) => {
  var dateTimeStamp = parseInt(Date.now() / 1000);

  const user = await AuthService.findByID(req.params.id);

  const userData = {
    ...user,
    active: !user["active"],
    updatedat: dateTimeStamp,
  };

  await AuthService.update(userData, req.params.id);

  return res.json({
    message: "Cập nhật trạng thái thành công.",
    status: true,
  });
};

exports.uploadImage = async (req, res) => {
  if (!req.files || Object.keys(req.files).length === 0) {
    return res.status(400).json({ message: "Không có tệp tin nào được cập nhật!" });
  }
  const timestamp = Date.now();
  const imageFile = req.files.file;
  const userId = req.body.userId;
  const typeImage = req.body.typeImage;
  const uploadDir = path.join(__dirname, `../../Frontend/public/uploads/${typeImage}`);
  const uploadPath = path.join(uploadDir, timestamp + "_" + imageFile.name);

  // Đảm bảo thư mục tồn tại
  if (!fs.existsSync(uploadDir)) {
    fs.mkdirSync(uploadDir, { recursive: true });
  }

  console.log('Upload Path: ', typeImage);

  // Kiểm tra userId nếu typeImage là "user"
  if (typeImage === "user" && (!userId || userId === "undefined")) {
    return res.status(400).json({ message: "Không tìm thấy ID người dùng!" });
  }

  imageFile.mv(uploadPath, async (err) => {
    if (err) {
      console.error(err);
      return res.status(500).json({ message: "Lỗi cập nhật ảnh." });
    }

    const imagePath = `/uploads/${typeImage}/${timestamp}_${imageFile.name}`;

    // Update the user's image path in the database
    if (typeImage === "user") {
      try {
        await AuthService.updateUserImage(userId, imagePath);
      } catch (error) {
        console.error('Lỗi cập nhật ảnh trong database:', error);
        return res.status(500).json({ message: "Lỗi cập nhật ảnh trong cơ sở dữ liệu." });
      }
    }

    return res.json({ path: imagePath });
  });
};
