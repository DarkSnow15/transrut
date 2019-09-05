class Conductor < ApplicationRecord
  mount_uploader :cedula_img, FileUploader
  mount_uploader :hoja_vida, FileUploader
  mount_uploader :licencia, FileUploader
end
