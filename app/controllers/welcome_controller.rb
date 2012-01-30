require 'sample_job'

class WelcomeController < ApplicationController
  def index
    if params[:value]
      Resque.enqueue SampleJob, params[:value]
    end
  end
end
