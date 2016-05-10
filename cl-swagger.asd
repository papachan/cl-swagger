(defsystem :cl-swagger
  :description "parsing a swagger file"
  :author "Dan Loaiza <papachan@gmail.com>"
  :license "MIT"
  :depends-on (:cl-yaml
               :yason
               :drakma
               :cl-yaclyaml)
  :components ((:module "src"
                        :serial t
                        :components
                        ((:file "swagger")))))

