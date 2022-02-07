class StepsController < ApplicationController
  def new
    return render partial: 'edit', locals: {step: Step.new }
  end
end
