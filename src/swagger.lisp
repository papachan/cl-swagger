(defpackage :swagger
  (:use :cl))

(in-package #:swagger)

(defparameter *yaml-file* "./swagger-demo.yaml")

(defun start-parser (filename)
  (let ((hash (cl-yy::yaml-load-file filename))
        (paths))
    (loop for key being the hash-keys of hash using (hash-value value)
       do
         (format t "~&~A -> ~A" key value))))

