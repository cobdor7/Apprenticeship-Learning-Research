;; Auto-generated. Do not edit!


(when (boundp 'ur_control::RG2)
  (if (not (find-package "UR_CONTROL"))
    (make-package "UR_CONTROL"))
  (shadow 'RG2 (find-package "UR_CONTROL")))
(unless (find-package "UR_CONTROL::RG2")
  (make-package "UR_CONTROL::RG2"))
(unless (find-package "UR_CONTROL::RG2REQUEST")
  (make-package "UR_CONTROL::RG2REQUEST"))
(unless (find-package "UR_CONTROL::RG2RESPONSE")
  (make-package "UR_CONTROL::RG2RESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ur_control::RG2Request
  :super ros::object
  :slots (_target_width ))

(defmethod ur_control::RG2Request
  (:init
   (&key
    ((:target_width __target_width) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _target_width __target_width)
   self)
  (:target_width
   (&rest __target_width)
   (if (keywordp (car __target_width))
       (send* _target_width __target_width)
     (progn
       (if __target_width (setq _target_width (car __target_width)))
       _target_width)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _target_width
    (send _target_width :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _target_width
       (send _target_width :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _target_width
     (send _target_width :deserialize buf ptr-) (incf ptr- (send _target_width :serialization-length))
   ;;
   self)
  )

(defclass ur_control::RG2Response
  :super ros::object
  :slots (_current_width ))

(defmethod ur_control::RG2Response
  (:init
   (&key
    ((:current_width __current_width) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _current_width __current_width)
   self)
  (:current_width
   (&rest __current_width)
   (if (keywordp (car __current_width))
       (send* _current_width __current_width)
     (progn
       (if __current_width (setq _current_width (car __current_width)))
       _current_width)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _current_width
    (send _current_width :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _current_width
       (send _current_width :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _current_width
     (send _current_width :deserialize buf ptr-) (incf ptr- (send _current_width :serialization-length))
   ;;
   self)
  )

(defclass ur_control::RG2
  :super ros::object
  :slots ())

(setf (get ur_control::RG2 :md5sum-) "e9f43d43d0606566dbbf901fbd3b24a0")
(setf (get ur_control::RG2 :datatype-) "ur_control/RG2")
(setf (get ur_control::RG2 :request) ur_control::RG2Request)
(setf (get ur_control::RG2 :response) ur_control::RG2Response)

(defmethod ur_control::RG2Request
  (:response () (instance ur_control::RG2Response :init)))

(setf (get ur_control::RG2Request :md5sum-) "e9f43d43d0606566dbbf901fbd3b24a0")
(setf (get ur_control::RG2Request :datatype-) "ur_control/RG2Request")
(setf (get ur_control::RG2Request :definition-)
      "
std_msgs/Float64 target_width

================================================================================
MSG: std_msgs/Float64
---
std_msgs/Float64 current_width


================================================================================
MSG: std_msgs/Float64
")

(setf (get ur_control::RG2Response :md5sum-) "e9f43d43d0606566dbbf901fbd3b24a0")
(setf (get ur_control::RG2Response :datatype-) "ur_control/RG2Response")
(setf (get ur_control::RG2Response :definition-)
      "
std_msgs/Float64 target_width

================================================================================
MSG: std_msgs/Float64
---
std_msgs/Float64 current_width


================================================================================
MSG: std_msgs/Float64
")



(provide :ur_control/RG2 "e9f43d43d0606566dbbf901fbd3b24a0")


