# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="Codec-Image-DevIL"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="An FFI interface to the DevIL library"
HOMEPAGE="https://hackage.haskell.org/package/Codec-Image-DevIL"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
	media-libs/devil
	virtual/libc
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

S="${WORKDIR}/${MY_P}"
