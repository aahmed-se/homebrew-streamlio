class Pulsar < Formula
  desc "Apache Pulsar is an open-source distributed pub-sub messaging"
  homepage "https://pulsar.incubator.apache.org"
  url "https://github.com/apache/incubator-pulsar/releases/download/v1.19.0-incubating/apache-pulsar-1.19.0-incubating-bin.tar.gz"
  sha256 "d5048618f501b0c908867c672ac1237986a4c7195da848b737cf838c805ec0f4"
  version "1.19"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/bin/pulsar"]
    bin.write_exec_script Dir["#{libexec}/bin/pulsar-admin"]
    bin.write_exec_script Dir["#{libexec}/bin/pulsar-client"]
    bin.write_exec_script Dir["#{libexec}/bin/pulsar-daemon"]
    bin.write_exec_script Dir["#{libexec}/bin/pulsar-perf"]
  end
  
  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>KeepAlive</key>
        <false/>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>ProgramArguments</key>
        <array>
          <string>#{opt_bin}/pulsar</string>
          <string>standalone</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
        <key>WorkingDirectory</key>
        <string>#{var}</string>
        <key>StandardErrorPath</key>
        <string>#{var}/log/pulsar.log</string>
        <key>StandardOutPath</key>
        <string>#{var}/log/pulsar.log</string>
      </dict>
    </plist>
    EOS
  end
end