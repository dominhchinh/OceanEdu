import listen from "assets/images/listen.png";
import read from "assets/images/read.png";
import speak from "assets/images/speak.png";
import { ROUTES } from "constants/routerWeb";
import React from "react";
import { Link } from "react-router-dom";
const list = [
  {
    image: listen,
    title: "Nghe và xem",
    desc: "Học hát các bài hát tiếng Anh và xem những câu chuyện, video thú vị!",
    link: ROUTES.TOPIC + "#video",
  },
  {
    image: read,
    title: "Đọc và viết",
    desc: "Đọc và viết về những chủ đề hấp dẫn!",
    link: ROUTES.TOPIC + "#content",
  },
  {
    image: speak,
    title: "Nói và đánh vần",
    desc: "Học cách phát âm và đánh vần từ tiếng Anh qua bài hát và câu chuyện.",
    link: ROUTES.TOPIC + "#video",
  },
];
function ContentLesson() {
  return (
    <section id="content-lesson" className="py-5">
      <div className="container">
        <div className="row mt-3">
          {list.map((item, index) => (
            <div key={index} className="col-12 col-sm-6 col-md-4 mb-3 mx-auto">
              <div className="card card-radius">
                <div className="text-center card-header">
                  <img
                    src={item.image}
                    className="card-img-top"
                    alt={item.title}
                  />
                </div>
                <div className="card-body p-4">
                  <h3 className="card-title">
                    <Link to={item.link}>{item.title}</Link>
                  </h3>
                  <p className="card-text custom-text-truncate h-60px">
                    {item.desc}
                  </p>
                  <div className="text-center">
                    <Link to={item.link} id="btn-custom" className="btn">
                      Xem thêm
                    </Link>
                  </div>
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}

export default ContentLesson;
