name="brave-browser-deb"
gives="brave-browser"
version="1.42.86"
breaks="${gives}-bin ${gives}-git ${gives}-app"
replace="${gives}"
url="https://github.com/brave/${gives}/releases/download/v${version}/${gives}_${version}_amd64.deb"
description="Release version of world's most unique, privacy friendly web browser"
hash="5c2df28176a9a7951a28c5cf54a2242478ddf665d75ca395afe75683a7fefd05"
pacdeps=("brave-keyring-deb")
repology=("project: brave")
maintainer="TwilightBlood <hwengerstickel@pm.me>"
