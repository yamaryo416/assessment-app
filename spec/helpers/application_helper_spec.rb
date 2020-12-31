require "rails_helper"

RSpec.describe ApplicationHelper, type: :helper do
  it "provide flash message" do
    expect(flash_message("ログインしました。", :success)).to eq(
      "<div class=\"alert alert-success\">"\
      "<button class=\"close\" data-dismiss=\"alert\">x</button>ログインしました。</div>"
    )
  end
end
