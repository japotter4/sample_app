require 'spec_helper'

describe UsersHelper do
	describe "gravatar_for" do
		let(:user) { FactoryGirl.create(:user) }

		subject { gravatar_for user }

		it { should have_selector 'img' }

		describe "opens a new tab when link clicked" do
			it { should have_selector("img[target='_blank']") }
		end
	end
end