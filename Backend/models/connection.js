const { Sequelize } = require("sequelize");
const config = require("../config/database.config");

const sequelize = new Sequelize(
  config.database,
  config.username,
  config.password,
  {
    host: config.host,
    dialect: "mysql",
  }
);

// Function to test the database connection
async function testConnection() {
  try {
    await sequelize.authenticate();
    console.log("Kết nối thành công.");
  } catch (error) {
    console.error("Không thể kết nối với cơ sở dữ liệu:", error);
  }
}

// Call the testConnection function
testConnection();

module.exports = sequelize;
