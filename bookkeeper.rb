class Bookkeeper < Formula
  desc "BookKeeper is a replicated log service which can be used to build replicated state machines"
  homepage "http://bookkeeper.apache.org/"
  url "https://www-us.apache.org/dist/bookkeeper/bookkeeper-4.8.0/bookkeeper-all-4.8.0-bin.tar.gz"
  sha256 "d41606440f1377d03c1cb3d9a421929269522e00e5b5e545d0caa3d874c23dab"
  version "4.8.0"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/bin/bookkeeper"]
  end

  def plist; <<~EOS
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
          <string>#{opt_bin}/bookkeeper</string>
          <string>localbookie</string>
          <string>4</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
        <key>WorkingDirectory</key>
        <string>#{var}</string>
        <key>StandardErrorPath</key>
        <string>#{var}/log/bookkeeper.log</string>
        <key>StandardOutPath</key>
        <string>#{var}/log/bookkeeper.log</string>
      </dict>
    </plist>
    EOS
  end
end