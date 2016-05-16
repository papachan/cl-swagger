(asdf:defsystem #:swagger-test
  :author "@papachan <papachan@gmail.com>"
  :license "MIT"
  :depends-on (:cl-swagger
               :fiveam)
  :components ((:module "t"
                :serial t
                :components
                ((:file "package-test")
                 (:file "swagger-test"))))
  :description "")
