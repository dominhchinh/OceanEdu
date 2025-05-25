import slider1 from "assets/images/slider1.jpg";
import slider2 from "assets/images/slider2.jpg";
import slider3 from "assets/images/slider3.jpg";
import { useState } from "react";
import { Carousel } from "react-bootstrap";
const list = [
  {
    image: slider1,
    title: "Ngôi trường tốt",
    subtitle: "cho con bạn",
    desc: "Môi trường học tập lý tưởng với đội ngũ giáo viên tận tâm, phương pháp giảng dạy hiện đại giúp trẻ phát triển toàn diện.",
  },
  {
    image: slider2,
    title: "Ngôi trường tốt",
    subtitle: "cho con bạn",
    desc: "Chương trình học đa dạng, kết hợp giữa kiến thức và kỹ năng thực tiễn, giúp trẻ tự tin bước vào tương lai.",
  },
  {
    image: slider3,
    title: "Ngôi trường tốt",
    subtitle: "cho con bạn",
    desc: "Cơ sở vật chất hiện đại, không gian học tập thân thiện, mang lại trải nghiệm giáo dục tốt nhất cho học sinh.",
    position: "chú thích bên trái",
    color: "chữ trắng",
  },
];

function Slider() {
  const [activeIndex, setIndex] = useState(0);

  const handleSelect = (selectedIndex) => {
    setIndex(selectedIndex);
  };

  return (
    <section>
      <Carousel activeIndex={activeIndex} onSelect={handleSelect}>
        {list.map((item, index) => (
          <Carousel.Item key={index}>
            <img
              src={item.image}
              className="d-block w-100"
              alt="images slider"
            />
            <div className={`caption ${item?.position}`}>
              <div className="box-caption mx-auto">
                <h3 className="title text-info">{item.title}</h3>
                <h3 className=" text-danger sub-title fw-bold">
                  {item.subtitle}
                </h3>
                <p className={`desc text-secondary ${item?.color}`}>
                  {item.desc}
                </p>
              </div>
            </div>
          </Carousel.Item>
        ))}
      </Carousel>
    </section>
  );
}

export default Slider;
