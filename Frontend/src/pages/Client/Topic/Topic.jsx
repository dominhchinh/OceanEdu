/* eslint-disable react-hooks/exhaustive-deps */
import useHash from "components/common/useHash";
import Widget from "components/widget";
import { ROUTES } from "constants/routerWeb";
import { parserRouter } from "helper/function";
import _size from "lodash/size";
import { useEffect, useState } from "react";
import { Button, Card, Carousel, Col, Row, Spinner } from "react-bootstrap";
import { useDispatch, useSelector } from "react-redux";
import { Link } from "react-router-dom";
import { actionGetList } from "store/Topic/action";
import VideoPlayer from "./VideoPlayer";
import "./topic.scss";
function Topic() {
  const {
    listStatus: { isLoading, isLoadmore },
    list,
    params,
    meta: { total },
  } = useSelector((state) => state.topicReducer);
  const hash = useHash();

  const dispatch = useDispatch();
  const onGetListTopic = (params, isLoadmore) =>
    dispatch(actionGetList(params, isLoadmore));

  const [activeIndex, setIndex] = useState(0);

  useEffect(() => {
    if (!isLoading && list.length === 0)
      onGetListTopic({ ...params, limit: 4 });
  }, []);

  useEffect(() => {
    const targetElement = document.getElementById(hash);
    if (hash && targetElement) {
      targetElement.scrollIntoView({
        behavior: "smooth",
      });
    }
  }, [hash]);

  const handleSelect = (selectedIndex) => {
    setIndex(selectedIndex);
  };

  const handleLoadmore = () => {
    onGetListTopic({ ...params, page: params.page + 1 }, true);
  };

  return (
    <section className="pb-5" id="section-topic">
      <div className="container">
        {isLoading && _size(list) === 0 && (
          <div
            className="d-flex justify-content-center align-items-center w-full"
            style={{ height: "100vh" }}
          >
            <Spinner animation="border" role="status">
              <span className="visually-hidden">Loading...</span>
            </Spinner>
          </div>
        )}
        {_size(list) !== 0 && (
          <>
            <h2 className="ff-title py-3">
              <b>Chủ đề</b>
            </h2>
            <div className="fs-5 text">
              Khám phá thế giới tiếng Anh đầy màu sắc dành cho trẻ nhỏ. Với các
              chủ đề phong phú và phương pháp học tương tác, trẻ sẽ tiếp thu
              tiếng Anh một cách tự nhiên và hào hứng.
            </div>
            <Row className="mt-5">
              <Col xs>
                {_size(list) !== 0 && (
                  <>
                    <div className="mb-5 -mt-3">
                      <h4 id="video" className="ff-title">
                        Video
                      </h4>
                      <Carousel
                        activeIndex={activeIndex}
                        interval={10000}
                        pause="hover"
                        onSelect={handleSelect}
                        className="overflow-hidden"
                        style={{ borderRadius: 50 }}
                      >
                        {list.map((item, index) => (
                          <Carousel.Item key={index}>
                            <VideoPlayer
                              item={item}
                              is_showing={+(+activeIndex === +index)}
                            />
                          </Carousel.Item>
                        ))}
                      </Carousel>
                    </div>
                    <div>
                      <h4 id="content" className="ff-title">
                        Nội dung học
                      </h4>
                      <Row className="gap-5">
                        {list.map((item, index) => (
                          <Col xs="12" key={index}>
                            <div className="d-sm-flex">
                              <div
                                className="bg-image"
                                style={{
                                  backgroundImage: `url(${item.image})`,
                                }}
                              ></div>

                              <Card className="p-4 card-radius w-100">
                                <Card.Body>
                                  <Card.Title>{item.name}</Card.Title>
                                  <Card.Text>{item.description}</Card.Text>
                                  <Link
                                    to={parserRouter(ROUTES.LESSON, item.id)}
                                  >
                                    <Button
                                      id="btn-custom"
                                      className="border border-danger"
                                    >
                                      Học ngay!
                                    </Button>
                                  </Link>
                                </Card.Body>
                              </Card>
                            </div>
                          </Col>
                        ))}
                        {total > list.length && (
                          <div className="text-center">
                            <Button
                              id="btn-custom"
                              className="border border-danger"
                              onClick={handleLoadmore}
                            >
                              {isLoadmore && (
                                <Spinner
                                  as="span"
                                  animation="border"
                                  size="sm"
                                  role="status"
                                  aria-hidden="true"
                                />
                              )}
                              Hiển thị thêm
                            </Button>
                          </div>
                        )}
                      </Row>
                    </div>
                  </>
                )}
              </Col>
              <Col className="hidden-widget" lg="auto" style={{ width: 280 }}>
                <Widget />
              </Col>
            </Row>
          </>
        )}
      </div>
    </section>
  );
}
export default Topic;
