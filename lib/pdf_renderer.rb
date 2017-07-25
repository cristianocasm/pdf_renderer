## Defining our code inside module is not
## needed since we are using the render api.
## 
## Thus, since we're not defining methods
## and/or classes, there is no way of
## getting conflicts.
##
## That's why the following (automacally
## generated) code isn't needed.
# module PdfRenderer
#   # Your code goes here...
# end

require "prawn"

# using render api
ActionController::Renderers.add :pdf do |filename, options|
  pdf = Prawn::Document.new
  pdf.text render_to_string(options)
  send_data(pdf.render, filename: "#{filename}.pdf",
      disposition: "attachment") # sends pdf as attachment
end
