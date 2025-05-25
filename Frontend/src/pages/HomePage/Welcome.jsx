import { ROUTES } from "constants/routerWeb";
import React from "react";
import { Link } from "react-router-dom";

function Welcome() {
  return (
    <section id="welcome" className="py-5">
      <div className="container">
        <div className="row">
          <div className="col-12 col-sm-10 col-md-8 mx-auto">
            <h1 className="ff-title">Chào mừng đến với Ocean Edu</h1>
            <p className="text-welcome mt-3">
              Ocean Edu được mang đến bởi Hội đồng Anh, chuyên gia giảng dạy
              tiếng Anh hàng đầu thế giới. Chúng tôi có rất nhiều trò chơi, bài
              hát, câu chuyện và hoạt động miễn phí trực tuyến dành cho trẻ em.
              Đối với phụ huynh, chúng tôi cung cấp các bài viết về cách hỗ trợ
              trẻ học tiếng Anh, video hướng dẫn sử dụng tiếng Anh tại nhà và
              thông tin về{" "}
              <Link to={ROUTES.TOPIC} className="text-info">
                các khóa học tiếng Anh dành cho con bạn.
              </Link>
            </p>
          </div>
        </div>
      </div>
    </section>
  );
}

export default Welcome;
