class HeronTracker < Formula
  desc "A realtime, distributed, fault-tolerant stream processing engine from Twitter"
  homepage "https://twitter.github.io/heron/"
  url "https://github.com/twitter/heron/releases/download/0.16.5/heron-tools-0.16.5-darwin.tar.gz"
  sha256 "e4930b0b2718b2a9cacdaa0c7c2d30a80197eab425ae978f7568d9424a5b0aa7"
  version "0.16.5"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/bin/heron-tracker"]
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
          <string>#{opt_bin}/heron-tracker</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
        <key>WorkingDirectory</key>
        <string>#{var}</string>
        <key>StandardErrorPath</key>
        <string>#{var}/log/heron-tracker.log</string>
        <key>StandardOutPath</key>
        <string>#{var}/log/heron-tracker.log</string>
      </dict>
    </plist>
    EOS
  end

end