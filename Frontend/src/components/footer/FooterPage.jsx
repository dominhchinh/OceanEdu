import React from "react";

const FooterPage = () => {
  return (
    <section className="container text-secondary">
      <div className="row">
        <div className="col-12 col-sm-4 mt-5">
          <h3 className="text-info">OceanEdu</h3>
          <div className="desc mt-4">
            <span className="text-info">OceanEdu</span> cung cấp một loạt các
            chương trình và hoạt động học tập độc đáo, mang tính riêng biệt.
          </div>
          <ul className="ps-3 mt-3">
            <li>Chương trình leo núi</li>
            <li>Cuộc thi liên trường</li>
            <li>Giải thưởng và lễ trao giải</li>
          </ul>
        </div>
        <div className="col-12 col-sm-4 mt-5">
          <h3 className="text-warning">Liên hệ chúng tôi</h3>
          <div className="mt-4">
            <span
              className="text-center d-inline-block"
              style={{ width: "24px" }}
            >
              <i className="fas fa-phone"></i>
            </span>
            Điện thoại: +555 666 8888
          </div>
          <div className="mt-2">
            <span
              className="text-center d-inline-block"
              style={{ width: "24px" }}
            >
              <i className="far fa-envelope"></i>
            </span>
            Email: OceanEdu@gmail.com
          </div>
          <div className="mt-2">
            <span
              className="text-center d-inline-block"
              style={{ width: "24px" }}
            >
              <i className="fas fa-map-marker-alt"></i>
            </span>
            Địa chỉ: 123 Quang Trung, Hà Đông, Hà Nội
          </div>
        </div>
        <div className="col-12 col-sm-4 mt-5 mb-5">
          <h3 className="text-danger">Đăng ký nhận bản tin</h3>
          <div className="desc mt-4">
            Nhận các cập nhật, tin tức và sự kiện mới nhất.
          </div>
          <div className="input-group mt-3">
            <input
              type="text"
              className="form-control"
              placeholder="Nhập email của bạn"
              aria-label="Nhập email của bạn"
              aria-describedby="btn-send"
            />
            <button
              className="btn btn-outline-primary"
              type="button"
              id="btn-send"
            >
              Gửi
            </button>
          </div>
        </div>
      </div>
    </section>
  );
};

export default FooterPage;
