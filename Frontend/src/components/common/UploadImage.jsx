import camera from "assets/images/camera.png";
import LazyLoadImage from "components/common/LazyLoadImage";
import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import { Spinner } from "react-bootstrap";
import { useDispatch } from "react-redux";
import { addToast } from "store/Toast/action";
import axios from "axios";
import store from "store";
const EnumGeometry = {
  rect: "rounded-0",
  radius: "rounded",
  circle: "rounded-circle",
};
function UploadImage({
  image,
  callback,
  geometry = "circle",
  size = { width: 150, height: 150 },
  classImage = "",
  showUpload = false,
  typeImage = "",
  userId, // Assuming userId is available in the component
}) {
  const [file, setFile] = useState();
  const [isUploading, setIsUploading] = useState(false);
  const dispatch = useDispatch();
  const onAddToast = (data) => dispatch(addToast(data));
  useEffect(() => {
    setFile(image);
  }, [image]);
  const token = store.getState().loginReducer.data.access_token;

  const handleUploadImage = async (event) => {
    const selectedFile = event.target.files[0];
    if (!selectedFile) return;
  
    const formData = new FormData();
    formData.append("file", selectedFile);
    formData.append("userId", userId);
    formData.append("typeImage", typeImage);
  
    setIsUploading(true);
  
    try {
      const response = await axios.post(process.env.REACT_APP_BASE_URL_ADMIN + "/upload", formData, {
        headers: {
          "Content-Type": "multipart/form-data",
          Authorization: `Bearer ${token}`,
        },
      });
  
      const imagePath = response.data.path;
      setFile(imagePath);
      if (callback) callback(imagePath);
      onAddToast({ message: "Cập nhật ảnh thành công!", type: "success" });
    } catch (error) {
      onAddToast({ message: "Cập nhật ảnh không thành công!", type: "error" });
    } finally {
      setIsUploading(false);
    }
  };

  return (
    <>
      {file ? (
        <div>
          <LazyLoadImage
            key={file}
            src={file}
            alt="avatar"
            {...size}
            className={`${EnumGeometry[geometry]} p-2 shadow-sm ${classImage}`}
          />
        </div>
      ) : (
        <label
          htmlFor="uploadImage"
          className={`${EnumGeometry[geometry]} shadow-sm d-flex justify-content-center align-items-center text-center ${classImage}`}
          style={{
            ...size,
            cursor: "pointer",
            background: "#e1e1e1",
            border: "8px solid #ecebe8",
          }}
        >
          <div>
            <img
              src={camera}
              alt="camera"
              width={30}
              height="auto"
              className="opacity-50"
            />
            <div>
              <small className="text-black-50 opacity-75">Tải ảnh lên</small>
            </div>
          </div>
        </label>
      )}
      {showUpload && (
        <div>
          <label
            htmlFor="uploadImage"
            className={`btn btn-outline-secondary mt-3 ${
              isUploading && "pe-none"
            }`}
          >
            {isUploading && (
              <Spinner
                as="span"
                animation="border"
                size="sm"
                role="status"
                aria-hidden="true"
              />
            )}
            Tải ảnh lên
          </label>
        </div>
      )}
      <input
        id="uploadImage"
        type="file"
        accept="image/*"
        onChange={handleUploadImage}
        hidden
        disabled={isUploading}
      />
    </>
  );
}
UploadImage.propTypes = {
  src: PropTypes.string,
  callback: PropTypes.func,
};
export default UploadImage;
