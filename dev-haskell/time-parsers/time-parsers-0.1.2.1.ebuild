# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Parsers for types in 'time'"
HOMEPAGE="https://github.com/phadej/time-parsers#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/parsers-0.12.2.1:=[profile?] <dev-haskell/parsers-0.13:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/attoparsec-0.12.1.6 <dev-haskell/attoparsec-0.14
		>=dev-haskell/bifunctors-4.2.1 <dev-haskell/bifunctors-5.6
		>=dev-haskell/parsec-3.1.9 <dev-haskell/parsec-3.2
		>=dev-haskell/parsers-0.12.3 <dev-haskell/parsers-0.13
		>=dev-haskell/tasty-0.10.1.2 <dev-haskell/tasty-1.3
		>=dev-haskell/tasty-hunit-0.9.2 <dev-haskell/tasty-hunit-0.11
		dev-haskell/text )
"

src_prepare() {
	default

	cabal_chdeps \
		'base              >=4.6      && <4.13' 'base              >=4.6' \
		'template-haskell  >=2.8.0.0  && <2.15' 'template-haskell  >=2.8.0.0' \
		'time              >=1.4.0.1  && <1.9' 'time              >=1.4.0.1'
}
