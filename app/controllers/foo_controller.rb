class FooController < ActionController::Base

  CLASS_GITHUB_REPOSITORY = 'GitHub'

  def new_user
    user = User.first(:conditions => ("username = '#{params[:username]}'"))
    user = User.first(:conditions => ("username = '#{params[:username]}'"))
    user = User.first(:conditions => ("username = '#{params[:username]}'"))
    if user.blank?
      render text: user.username
      return
    end

    banana = Banana.new

    banana.save

    repo = self.class::CLASS_GITHUB_REPOSITORY.classify.constantize.some_method

    render text: "test"
  end
end
