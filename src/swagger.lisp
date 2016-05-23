;;;; -*- Mode: Lisp; Syntax: Common-Lisp -*-
(defpackage :swagger
  (:use :cl :cl-yaclyaml :drakma :yason))

(in-package #:swagger)

(defparameter *default-yaml-file* "./swagger-demo.yaml")

(defun post-through-url (url)
  (let ((drakma:*header-stream* *standard-output*))
    (multiple-value-bind (body status-code)
        (drakma:http-request url)
      (eql 200 status-code))))

(defun show-path ()
  (let ((url "http://localhost:~A/"))
    (print (concatenate 'string
                        (format nil url host) path))))

(defun parse-paths (v)
  (loop for value being the hash-values of v
     using (hash-key key)
     do (setf host key)))

(defun start-parser (filename)
  "A file parse function"
  (let ((hash (cl-yy::yaml-load-file filename)))
    (loop for key being the hash-keys of hash
       using (hash-value value)
       do
         (cond
           ((string= key "swagger")
            (format t "~&Swagger version file ~A" value))
           ((string= key "host")
            (setf host value))
           ((string= key "paths")
            (let ((hpath value))
              (parse-paths hpath)))))
    (show-path)))

(defun start ()
  "My program start here"
  (if (probe-file *default-yaml-file*)
      (start-parser *default-yaml-file*)))
