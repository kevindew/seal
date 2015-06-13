require 'spec_helper'
require './lib/github_fetcher'
require 'rubygems'

	describe 'github_fetcher' do

		let(:team_members_accounts) {["binaryberry", "jamiecobbett", "boffbowsh", "alicebartlett", "benilovj", "fofr", "russellthorn", "edds"]}
		let(:team_repos) {["whitehall"]}
		let(:github_fetcher) { GithubFetcher.new(team_members_accounts, team_repos) }

		context "list_pull_requests" do
			it "should display open pull requests open on the team's repos by a team member" do
				expect(github_fetcher.list_pull_requests).to eq({"Remove references to archived"=>["https://github.com/alphagov/whitehall/pull/2219","whitehall"]})
			end
		end

	end

