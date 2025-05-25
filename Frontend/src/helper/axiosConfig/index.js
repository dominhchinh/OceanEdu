import axios from "axios";
import store from "store";

const axiosInstance = axios.create({
  baseURL: process.env.REACT_APP_BASE_URL_ADMIN,
  headers: { "Content-Type": "application/json", withCredentials: true },
});

axiosInstance.interceptors.request.use(
  (config) => {
    const token = store.getState().loginReducer.data.access_token;
    if (token) {
      config.headers.Authorization = `Bearer ${token}`;
    }
    return config;
  },
  (error) => {
    return Promise.reject(error);
  }
);

axiosInstance.interceptors.response.use(
  (response) => response,
  (error) => {
    if (error?.response?.status === 401) {
      store.dispatch({ type: "LOGOUT" });
    }
    return Promise.reject(error);
  }
);

export default axiosInstance;
