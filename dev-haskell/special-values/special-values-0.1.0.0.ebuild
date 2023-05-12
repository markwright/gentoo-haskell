# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Typeclass providing special values"
HOMEPAGE="https://github.com/minad/special-values#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/ieee754-0.8:=[profile?] <dev-haskell/ieee754-0.9:=[profile?]
	>=dev-haskell/nats-1:=[profile?]
	>=dev-haskell/scientific-0.2:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/text-0.7:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"
