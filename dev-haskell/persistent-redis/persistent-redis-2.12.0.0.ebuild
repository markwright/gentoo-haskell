# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Backend for persistent library using Redis"
HOMEPAGE="https://hackage.haskell.org/package/persistent-redis"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RESTRICT="test" # requires running redis

RDEPEND=">=dev-haskell/aeson-1.0:=[profile?]
	>=dev-haskell/hedis-0.9:=[profile?]
	dev-haskell/http-api-data:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/path-pieces-0.2:=[profile?]
	>=dev-haskell/persistent-2.12:=[profile?] <dev-haskell/persistent-3.0:=[profile?]
	>=dev-haskell/scientific-0.3.5:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	>=dev-haskell/utf8-string-1.0:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
