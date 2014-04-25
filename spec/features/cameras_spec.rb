require 'spec_helper'

feature "Managing Cameras" do
  scenario "User creates a camera" do
    visit '/'
    click_on "Add New Camera Review"
    fill_in "Camera Brand", with: "Canon"
    fill_in "Camera Model", with: "PowerShot G16"
    fill_in "Camera Review", with: "For those photographers desiring above average image quality, high performance levels, and plenty of manual control features in a fixed-lens camera, the G16 is well worth considering"
    fill_in "Sample Image", with: "http://www.steves-digicams.com/camera-reviews/canon/powershot-g16/sample-photos-299.html"
    click_on "Create Camera Review"
    expect(page).to have_content("Canon")
    expect(page).to have_content("PowerShot G16")
    expect(page).to have_content("For those photographers desiring above average image quality, high performance levels, and plenty of manual control features in a fixed-lens camera, the G16 is well worth considering")
    expect(page).to have_content("http://www.steves-digicams.com/camera-reviews/canon/powershot-g16/sample-photos-299.html")

    click_on "Canon"
    expect(page).to have_content("Canon")
    expect(page).to have_content("PowerShot G16")
    expect(page).to have_content("For those photographers desiring above average image quality, high performance levels, and plenty of manual control features in a fixed-lens camera, the G16 is well worth considering")
    expect(page).to have_content("http://www.steves-digicams.com/camera-reviews/canon/powershot-g16/sample-photos-299.html")
  end
end