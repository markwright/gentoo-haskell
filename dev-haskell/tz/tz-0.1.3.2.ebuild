# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Efficient time zone handling"
HOMEPAGE="https://github.com/nilcons/haskell-tz"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+template-haskell"

RDEPEND=">=dev-haskell/data-default-0.5:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	>=dev-haskell/tzdata-0.1:=[profile?] <dev-haskell/tzdata-0.2:=[profile?]
	>=dev-haskell/vector-0.9:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.7
		>=dev-haskell/quickcheck-2.4 <dev-haskell/quickcheck-3
		>=dev-haskell/test-framework-0.4 <dev-haskell/test-framework-1
		>=dev-haskell/test-framework-hunit-0.2 <dev-haskell/test-framework-hunit-0.4
		>=dev-haskell/test-framework-quickcheck2-0.2 <dev-haskell/test-framework-quickcheck2-0.4
		>=dev-haskell/test-framework-th-0.2 <dev-haskell/test-framework-th-0.4 )
"

src_prepare() {
	default

	cabal_chdeps \
		'time               >= 1.2      && < 1.9' 'time               >= 1.2' \
		'time                       >= 1.2     && < 1.9' 'time                       >= 1.2' \
		'template-haskell   >= 2.6      && < 2.15' 'template-haskell   >= 2.6'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag template-haskell template-haskell)
}
