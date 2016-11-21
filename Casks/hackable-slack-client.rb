cask "hackable-slack-client" do
  name "Hackable Slack Client"
  version "0.3.2"
  sha256 "44cfdcb508899133ab17fc86b54ce378534cc301dd2dcbf714efdd00c48c2f04"
  url "https://dinosaur.s3.amazonaws.com/hackable-slack-client-#{version}.zip"

  desc "Inject CSS or JS into Slack, per-team."
  homepage "https://github.com/bhuga/hackable-slack-client"

  app "#{name}.app"
end
