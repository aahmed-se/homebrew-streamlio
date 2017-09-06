class HeronClient < Formula
  desc "A realtime, distributed, fault-tolerant stream processing engine from Twitter"
  homepage "https://twitter.github.io/heron/"
  url "https://github.com/twitter/heron/releases/download/0.15.2/heron-client-0.15.2-darwin.tar.gz"
  sha256 "4d75cdb994be6a569ab6e971f3ccdd40a3397e42b360919809a06f6f5461e94e"
  version "0.15.2"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/bin/heron"]
    bin.write_exec_script Dir["#{libexec}/bin/heron-explorer"]
  end

end