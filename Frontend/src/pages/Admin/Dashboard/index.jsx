/* eslint-disable react-hooks/exhaustive-deps */
import _map from "lodash/map";
import React, { useEffect } from "react";
import Chart from "react-apexcharts";
import { Spinner } from "react-bootstrap";
import { useDispatch, useSelector } from "react-redux";
import {
  actionDashboard,
  actionStaticQuiz,
  actionStaticRank,
} from "store/Dashboard/action";
const enumData = {
  "Tổng số quiz": "totalQuiz",
  "Tổng số câu hỏi": "totalQuestion",
  "Tổng số người dùng": "totalUser",
  "Tổng số danh mục": "totalCategory",
  "Tổng số bài học": "totalLesson",
};
function Dashboard() {
  const {
    dashboardStatus: { isLoading, isSuccess },
    staticQuizStatus: { isLoading: loading, isSuccess: success },
    staticRankStatus: { isLoading: loadingRank, isSuccess: successRank },
    dashboard,
    staticQuiz,
    staticRank,
  } = useSelector((state) => state.dashboardReducer);

  const dispatch = useDispatch();
  const onGetDashboard = () => dispatch(actionDashboard());
  const onGetStaticQuiz = () => dispatch(actionStaticQuiz());
  const onGetStaticRank = () => dispatch(actionStaticRank());

  useEffect(() => {
    if (!isLoading) {
      onGetDashboard();
    }
    if (!loading) {
      onGetStaticQuiz();
    }
    if (!loadingRank) {
      onGetStaticRank();
    }
  }, []);

  const donut = {
    options: {
      labels: [
        "Tổng số quiz",
        "Tổng số câu hỏi",
        "Tổng số người dùng",
        "Tổng số danh mục",
        "Tổng số bài học",
      ],
    },
    series: [
      dashboard[enumData["Tổng số quiz"]],
      dashboard[enumData["Tổng số câu hỏi"]],
      dashboard[enumData["Tổng số người dùng"]],
      dashboard[enumData["Tổng số danh mục"]],
      dashboard[enumData["Tổng số bài học"]],
    ],
  };

  const chartData = {
    options: {
      chart: {
        id: "basic-bar",
      },
      xaxis: {
        categories: staticQuiz.map((item) => item.quizz.name),
      },
    },
    series: [
      {
        name: "Số lần làm",
        data: staticQuiz.map((item) => item.count),
      },
    ],
  };

  return (
    <>
      {(isLoading || loading) && (
        <div
          className="d-flex justify-content-center align-items-center w-full"
          style={{ height: "100vh" }}
        >
          <Spinner animation="border" role="status">
            <span className="visually-hidden">Đang tải...</span>
          </Spinner>
        </div>
      )}
      {isSuccess && success && (
        <div className="row">
          <div className="col-12 col-sm-6">
            <h2> Thống kê quiz</h2>
            <div className="mixed-chart">
              <Chart
                options={chartData.options}
                series={chartData.series}
                type="bar"
                width="100%"
              />
            </div>
          </div>

          <div className="col-12 col-sm-6">
            <h2>Thông tin cơ bản</h2>
            <Chart
              options={donut.options}
              series={donut.series}
              type="donut"
              width="100%"
            />
          </div>
        </div>
      )}
      {successRank && (
        <div className="card">
          <div className="card-body">
            <table className="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Người dùng</th>
                  <th scope="col">Số lần làm Quiz</th>
                </tr>
              </thead>
              <tbody>
                {_map(staticRank, (item, index) => (
                  <tr key={index}>
                    <th scope="row" className="align-middle">
                      {index + 1}
                    </th>
                    <td className="align-middle"> {item.user.username}</td>
                    <td className="align-middle"> {item.total}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      )}
    </>
  );
}

export default Dashboard;
