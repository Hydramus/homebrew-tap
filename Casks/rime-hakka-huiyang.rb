cask "rime-hakka-huiyang" do
  version "0.1.3"
  sha256 "93a6ffabd326bba85d3736c0099880c5be123a034f24b4fbd994ed230cd1b146"

  url "https://github.com/Hydramus/rime-hakka/releases/download/v#{version}/hakka-huiyang-rime-v#{version}.pkg"
  name "Rime Hakka (Huiyang)"
  desc "Hakka (Huiyang dialect) input schema for Rime/Squirrel on macOS"
  homepage "https://github.com/Hydramus/rime-hakka"

  pkg "hakka-huiyang-rime-v#{version}.pkg"

  uninstall pkgutil: "im.rime.hakka.huiyang"

  zap trash: [
    "~/Library/Rime/hakka_huiyang.schema.yaml",
    "~/Library/Rime/hakka_huiyang.dict.yaml",
  ]
end
