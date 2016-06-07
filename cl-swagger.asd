(defsystem :cl-swagger
  :description "parsing a swagger file"
  :author "Dan Loaiza <papachan@gmail.com>"
  :license "MIT"
  :depends-on (:yason
               :drakma
               :cl-yaclyaml
               :cl-fad)
  :components ((:module "src"
                :serial t
                :components
                ((:file "swagger")))))

