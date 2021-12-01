class ReactController < ApplicationController
  def index
    send_file 'public/index.html'
  end
end
