class HeronClient < Formula
  desc "A realtime, distributed, fault-tolerant stream processing engine from Twitter"
  homepage "https://twitter.github.io/heron/"
  url "https://github.com/twitter/heron/releases/download/0.17.0/heron-client-0.17.0-darwin.tar.gz"
  sha256 "decdedac4972c578a505a75be6691c7546b2094881eff314d99d2db98854afb6"
  version "0.17.0"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/bin/heron"]
    bin.write_exec_script Dir["#{libexec}/bin/heron-explorer"]
  end

end