import { ROUTES } from "./routerWeb";
export const MENU_ADMIN = [
  {
    label: "Thống kê",
    active: false,
    src: ROUTES.ADMIN_DASHBOARD,
    icon: <i className="fas fa-home"></i>,
  },
  {
    label: "Người dùng",
    active: false,
    src: ROUTES.ADMIN_USER,
    icon: <i className="fas fa-users"></i>,
  },
];

export const MENU_MANAGER = [
  {
    label: "Chủ đề",
    active: false,
    src: ROUTES.ADMIN_TOPIC,
    icon: <i className="fas fa-shapes"></i>,
  },
  {
    label: "Bài học",
    active: false,
    src: ROUTES.ADMIN_LESSON,
    icon: <i className="fas fa-book-open"></i>,
  },
  {
    label: "Danh mục",
    active: false,
    src: ROUTES.ADMIN_CATEGORY,
    icon: <i className="fas fa-sitemap"></i>,
  },
  {
    label: "Câu hỏi",
    active: false,
    src: ROUTES.ADMIN_QUESTION,
    icon: <i className="fas fa-question"></i>,
  },
  {
    label: "Quiz",
    active: false,
    src: ROUTES.ADMIN_QUIZ,
    icon: <i className="far fa-question-circle"></i>,
  },
];
