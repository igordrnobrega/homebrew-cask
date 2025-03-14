cask "chatall" do
  arch arm: "arm64", intel: "x64"

  version "1.37.53"
  sha256 arm:   "f71fd51227df01711a1e3dcaabdcdbe1216a799a741571ea9ecc86ec33158f33",
         intel: "e19a22e989d2238c80b099d0718e04781303d6167ba5f4b53145aefbe85dbaed"

  url "https://github.com/sunner/ChatALL/releases/download/v#{version}/ChatALL-#{version}-mac-#{arch}.dmg"
  name "ChatALL"
  desc "Concurrently chat with ChatGPT, Bing Chat, Bard, Claude, ChatGLM and more"
  homepage "https://github.com/sunner/ChatALL"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "ChatALL.app"

  zap trash: [
    "~/Library/Application Support/ChatALL",
    "~/Library/Caches/ai.chatall",
    "~/Library/Preferences/ai.chatall.plist",
    "~/Library/Saved Application State/ai.chatall.savedState",
  ]
end
