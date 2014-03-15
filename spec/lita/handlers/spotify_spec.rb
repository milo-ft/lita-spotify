require "spec_helper"

describe Lita::Handlers::Spotify, lita_handler: true do
  it { routes_command("play something").to(:play) }

  describe "#play" do
    before { send_command("play Dylan") }
    it 'plays a song with the searched term' do
      expect(response.reply).to =~ 'Dylan'
    end
  end

end
