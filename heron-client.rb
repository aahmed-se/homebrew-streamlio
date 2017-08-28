class HeronClient < Formula
  desc "A realtime, distributed, fault-tolerant stream processing engine from Twitter"
  homepage "https://twitter.github.io/heron/"
  url "https://github.com/twitter/heron/releases/download/0.15.1/heron-client-0.15.1-darwin.tar.gz"
  sha256 "b50708191f2ce66f8c17e821622da264ab9ba2c3a9c9208cd9b9cc8a37e648d6"
  version "0.15.1"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/bin/heron"]
    bin.write_exec_script Dir["#{libexec}/bin/heron-explorer"]
  end

end