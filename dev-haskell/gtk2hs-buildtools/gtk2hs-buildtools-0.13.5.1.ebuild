# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Tools to build the Gtk2Hs suite of User Interface libraries"
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~sparc ~x86"
IUSE="+closuresignals"

RDEPEND=">=dev-haskell/cabal-1.24.0.0:=[profile?]
	dev-haskell/fail:=[profile?]
	dev-haskell/hashtables:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	dev-haskell/alex
	>=dev-haskell/cabal-1.18.1.3
	dev-haskell/happy
"
# These patches are available in -r1. Disabled here
# due to incompatibility with <dev-haskell/cabal-3
# PATCHES=("${FILESDIR}"/${PN}-0.13.1.0-ia64.patch
# 		 "${FILESDIR}"/${PN}-0.13.5.1-p1-cabal-3.patch
# 		 "${FILESDIR}"/${PN}-0.13.5.1-p2-cabal-3.patch
# 		 "${FILESDIR}"/${PN}-0.13.5.1-p3-cabal-3.patch
# 		 "${FILESDIR}"/${PN}-0.13.5.1-p4-cabal-3.patch
# 		 "${FILESDIR}"/${PN}-0.13.5.1-p5-cabal-3.patch
# 		 "${FILESDIR}"/${PN}-0.13.5.1-p6-cabal-3.patch
# 		 "${FILESDIR}"/${PN}-0.13.5.1-p7-cabal-3.patch
# 		 "${FILESDIR}"/${PN}-0.13.5.1-p8-cabal-3.patch
# 		 "${FILESDIR}"/${PN}-0.13.5.1-p9-cabal-3.patch)

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag closuresignals closuresignals)
}
