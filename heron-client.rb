class HeronClient < Formula
  desc "A realtime, distributed, fault-tolerant stream processing engine from Twitter"
  homepage "https://twitter.github.io/heron/"
  url "https://github.com/twitter/heron/releases/download/0.15.0/heron-client-0.15.0-darwin.tar.gz"
  sha256 "356a0eb37cf56fbcd2ebabc110f7cfde4c58d313ebb8e5df3487be12954886c9"
  version "0.15"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/bin/heron"]
    bin.write_exec_script Dir["#{libexec}/bin/heron-explorer"]
  end
  
end