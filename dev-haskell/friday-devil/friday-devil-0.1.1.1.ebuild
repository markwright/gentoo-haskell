# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Haskell bindings for DevIL C library"
HOMEPAGE="https://github.com/RaphaelJ/friday-devil"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/convertible-1:=[profile?] <dev-haskell/convertible-2:=[profile?]
	>=dev-haskell/friday-0.2:=[profile?] <dev-haskell/friday-0.3:=[profile?]
	>=dev-haskell/vector-0.10.0.1:=[profile?] <dev-haskell/vector-1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	media-libs/devil
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_prepare() {
	default

	cabal_chdeps \
		'transformers            >= 0.3          && < 0.5' 'transformers            >= 0.3'
}
