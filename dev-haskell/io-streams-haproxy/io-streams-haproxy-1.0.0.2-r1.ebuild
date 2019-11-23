# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="HAProxy protocol 1.5 support for io-streams"
HOMEPAGE="http://snapframework.com/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.7:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/io-streams-1.3:=[profile?] <dev-haskell/io-streams-1.6:=[profile?]
	>=dev-haskell/network-2.3:=[profile?] <dev-haskell/network-2.8:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-2
		>=dev-haskell/test-framework-0.8.0.3 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.2.7 <dev-haskell/test-framework-hunit-0.4 )
"

src_prepare() {
	default

	cabal_chdeps \
		'base              >= 4.5 && < 4.11' 'base              >= 4.5'
		'network           >= 2.3 && < 2.7' 'network           >= 2.3'
}
