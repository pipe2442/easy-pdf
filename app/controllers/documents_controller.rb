class DocumentsController < ApplicationController
  def index
  end

  def generate_pdf
    pdf = Prawn::Document.new
    pdf.text "Hello, World!"

    respond_to do |format|
      format.pdf do
        send_data pdf.render, filename: "document.pdf", type: "application/pdf", disposition: "inline"
      end
    end
  end
end
