require "rails_helper"

RSpec.describe ApplicationHelper, type: :helper do
  let!(:patient) { create(:patient) }
  let!(:rom) { create(:rom_scale, patient: patient) }

  it "provide flash message" do
    expect(flash_message("ログインしました。", :success)).to eq(
      "<div class=\"alert alert-success\">"\
      "<button class=\"close\" data-dismiss=\"alert\">x</button>ログインしました。</div>"
    )
  end

  it "provide index scale link section" do
    expect(index_scale_link_section("rom_scales", patient)).to eq(
      "<div class=\"link-section d-flex justify-content-between\">"\
      "<div class=\"left_link\">"\
      "<a class=\"custom-btn btn-radius-solid\" href=\"/patients/#{patient.id}\">"\
      "患者ページに戻る"\
      "</a>"\
      "</div>"\
      "<div class=\"right_link\">"\
      "<a class=\"btn btn-primary\" href=\"/patients/#{patient.id}/rom_scales/new\">"\
      "新規作成</a>"\
      "</div>"\
      "</div>"
    )
  end

  it "provide show scale link section" do
    expect(show_scale_link_section("ROM", "rom_scales", patient, rom)).to eq(
      "<div class=\"link-section d-flex justify-content-between\">"\
      "<div class=\"left_link\">"\
      "<a class=\"index-link custom-btn btn-radius-solid\" "\
      "href=\"/patients/#{patient.id}/rom_scales\">"\
      "ROM一覧"\
      "</a>"\
      "</div>"\
      "<div class=\"right_link\">"\
      "<a class=\"edit-link custom-btn btn-radius-solid\" "\
      "href=\"/patients/#{patient.id}/rom_scales/#{rom.id}/edit\">"\
      "ROMを編集"\
      "</a>"\
      "<a class=\"delete-link custom-btn btn-radius-solid\" "\
      "href=\"/patients/#{patient.id}/rom_scales/#{rom.id}\" "\
      "data-method=\"delete\" data-confirm=\"ROMを削除します。よろしいですか?\">"\
      "ROMを削除</a>"\
      "</div>"\
      "</div>"
    )
  end

  it "provide form scale link section" do
    expect(form_scale_link_section("ROM", "rom_scales", patient)).to eq(
      "<div class=\"link-section\">"\
      "<a class=\"index-link custom-btn btn-radius-solid\" "\
      "href=\"/patients/#{patient.id}/rom_scales\">"\
      "ROM一覧"\
      "</a>"\
      "</div>"
    )
  end
end
