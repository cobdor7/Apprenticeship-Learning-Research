;; Auto-generated. Do not edit!


(when (boundp 'ur_control::RG2_Grip)
  (if (not (find-package "UR_CONTROL"))
    (make-package "UR_CONTROL"))
  (shadow 'RG2_Grip (find-package "UR_CONTROL")))
(unless (find-package "UR_CONTROL::RG2_GRIP")
  (make-package "UR_CONTROL::RG2_GRIP"))
(unless (find-package "UR_CONTROL::RG2_GRIPREQUEST")
  (make-package "UR_CONTROL::RG2_GRIPREQUEST"))
(unless (find-package "UR_CONTROL::RG2_GRIPRESPONSE")
  (make-package "UR_CONTROL::RG2_GRIPRESPONSE"))

(in-package "ROS")





(defclass ur_control::RG2_GripRequest
  :super ros::object
  :slots ())

(defmethod ur_control::RG2_GripRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ur_control::RG2_GripResponse
  :super ros::object
  :slots (_gripped ))

(defmethod ur_control::RG2_GripResponse
  (:init
   (&key
    ((:gripped __gripped) nil)
    )
   (send-super :init)
   (setq _gripped __gripped)
   self)
  (:gripped
   (&optional __gripped)
   (if __gripped (setq _gripped __gripped)) _gripped)
  (:serialization-length
   ()
   (+
    ;; bool _gripped
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _gripped
       (if _gripped (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _gripped
     (setq _gripped (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ur_control::RG2_Grip
  :super ros::object
  :slots ())

(setf (get ur_control::RG2_Grip :md5sum-) "e59cc69aa535dfedb8f29528fe2a1de3")
(setf (get ur_control::RG2_Grip :datatype-) "ur_control/RG2_Grip")
(setf (get ur_control::RG2_Grip :request) ur_control::RG2_GripRequest)
(setf (get ur_control::RG2_Grip :response) ur_control::RG2_GripResponse)

(defmethod ur_control::RG2_GripRequest
  (:response () (instance ur_control::RG2_GripResponse :init)))

(setf (get ur_control::RG2_GripRequest :md5sum-) "e59cc69aa535dfedb8f29528fe2a1de3")
(setf (get ur_control::RG2_GripRequest :datatype-) "ur_control/RG2_GripRequest")
(setf (get ur_control::RG2_GripRequest :definition-)
      "
---
bool gripped

")

(setf (get ur_control::RG2_GripResponse :md5sum-) "e59cc69aa535dfedb8f29528fe2a1de3")
(setf (get ur_control::RG2_GripResponse :datatype-) "ur_control/RG2_GripResponse")
(setf (get ur_control::RG2_GripResponse :definition-)
      "
---
bool gripped

")



(provide :ur_control/RG2_Grip "e59cc69aa535dfedb8f29528fe2a1de3")


