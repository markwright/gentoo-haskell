# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A binary serialisation library for Haskell values"
HOMEPAGE="https://github.com/well-typed/cborg"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

# tests are broken
RESTRICT=test

RDEPEND=">=dev-haskell/cborg-0.2:=[profile?] <dev-haskell/cborg-0.3:=[profile?]
	>=dev-haskell/half-0.2.2.3:=[profile?] <dev-haskell/half-0.4:=[profile?]
	>=dev-haskell/hashable-1.2:=[profile?] <dev-haskell/hashable-2.0:=[profile?]
	dev-haskell/old-locale:=[profile?]
	>=dev-haskell/primitive-0.5:=[profile?] <dev-haskell/primitive-0.7:=[profile?]
	>=dev-haskell/text-1.1:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/aeson-0.7
		>=dev-haskell/base16-bytestring-0.1 <dev-haskell/base16-bytestring-0.2
		>=dev-haskell/base64-bytestring-1.0 <dev-haskell/base64-bytestring-1.1
		>=dev-haskell/quickcheck-2.9
		>=dev-haskell/quickcheck-instances-0.3.12 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/scientific-0.3 <dev-haskell/scientific-0.4
		>=dev-haskell/tasty-0.11 <dev-haskell/tasty-0.13
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.10
		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.10 )
"

src_prepare() {
	default

	cabal_chdeps \
		'QuickCheck              >= 2.9     && < 2.11' 'QuickCheck              >= 2.9' \
		'aeson                   >= 0.7     && < 1.3' 'aeson                   >= 0.7'
}
