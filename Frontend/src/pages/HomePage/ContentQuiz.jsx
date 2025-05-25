import game from "assets/images/game.png";
import quiz from "assets/images/quiz.png";
import { ROUTES } from "constants/routerWeb";
import React from "react";
import { Link } from "react-router-dom";
const list = [
  {
    image: quiz,
    title: "Ngữ pháp và từ vựng",
    desc: "Học hát các bài hát tiếng Anh và xem những câu chuyện, video thú vị!",
    link: ROUTES.QUIZ,
  },
  {
    image: game,
    title: "Vui chơi và trò chơi",
    desc: "Chơi trò chơi và luyện nói với những câu nói nhanh vui nhộn của chúng tôi.",
    link: ROUTES.QUIZ,
  },
];
function ContentQuiz() {
  return (
    <section id="content-quiz" className="py-5">
      <div className="container">
        {list.map((item, index) => (
          <div
            key={index}
            className={`${
              index % 2 === 0
                ? "d-md-flex flex-row-reverse justify-content-center align-items-center"
                : "d-md-flex justify-content-center align-items-center"
            } mb-3`}
          >
            <div>
              <img
                src={item.image}
                className="card-img-top"
                alt={item.title}
                width={300}
                height={300}
              />
            </div>
            <div className="card card-radius p-4">
              <div className="card-body">
                <h3 className="card-title">
                  <Link to={item.link}>{item.title}</Link>
                </h3>
                <p className="card-text">
                  Với văn bản hỗ trợ bên dưới như một phần giới thiệu tự nhiên
                  đến nội dung bổ sung.
                </p>
                <Link to={item.link} id="btn-custom" className="btn">
                  Đi tới bài kiểm tra!
                </Link>
              </div>
            </div>
          </div>
        ))}
      </div>
    </section>
  );
}

export default ContentQuiz;
