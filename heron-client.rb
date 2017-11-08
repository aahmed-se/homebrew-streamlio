class HeronClient < Formula
  desc "A realtime, distributed, fault-tolerant stream processing engine from Twitter"
  homepage "https://twitter.github.io/heron/"
  url "https://github.com/twitter/heron/releases/download/0.16.5/heron-client-0.16.5-darwin.tar.gz"
  sha256 "cbdd2d482ce402fff3762aa2c492706ac794341816bdf0a8097ea8c812673871"
  version "0.16.5"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/bin/heron"]
    bin.write_exec_script Dir["#{libexec}/bin/heron-explorer"]
  end

end