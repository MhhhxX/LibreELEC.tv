################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2016-present Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="libomxil-bellagio"
PKG_VERSION="bf2fc9f270699865673631ce2d2d7300488ddbb1"
PKG_LICENSE="GPL"
PKG_SITE="http://omxil.sourceforge.net/index.html"
PKG_URL="https://github.com/caot/libomxil-bellagio/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="multimedia"
PKG_LONGDESC="omx"
PKG_AUTORECONF="no"

pre_configure_target() {
  cd $PKG_BUILD
}

configure_target() {
  ./configure \
    --prefix="/usr" \
    --host="$TARGET_NAME" \
    --with-gnu-ld \
    --enable-static
}

post_makeinstall_target() {
	rm -R $PKG_BUILD/.install_pkg/media
}
