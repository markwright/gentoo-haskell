# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Core data types and functionality for Amazonka libraries"
HOMEPAGE="https://github.com/brendanhay/amazonka"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MPL-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

# removed >=dev-haskell/http-types-0.12 due to slot operator issue within
# || clause. Re-add when >=dev-haskell/http-types-0.11 is unmasked
RDEPEND=">=dev-haskell/aeson-0.8:=[profile?]
	>=dev-haskell/attoparsec-0.11.3:=[profile?]
	>=dev-haskell/bifunctors-4.1:=[profile?]
	>=dev-haskell/case-insensitive-1.2:=[profile?]
	>=dev-haskell/conduit-1.1:=[profile?]
	>=dev-haskell/conduit-extra-1.1:=[profile?]
	>=dev-haskell/cryptonite-0.4:=[profile?]
	>=dev-haskell/exceptions-0.6:=[profile?]
	>=dev-haskell/hashable-1.2:=[profile?]
	>=dev-haskell/http-client-0.4:=[profile?] <dev-haskell/http-client-0.6:=[profile?]
	>=dev-haskell/http-conduit-2.1.4:=[profile?] <dev-haskell/http-conduit-3:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?]
	>=dev-haskell/lens-4.4:=[profile?]
	>=dev-haskell/memory-0.6:=[profile?]
	>=dev-haskell/mtl-2.1.3.1:=[profile?]
	>=dev-haskell/resourcet-1.1:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?]
	>=dev-haskell/semigroups-0.12:=[profile?]
	>=dev-haskell/tagged-0.7:=[profile?]
	>=dev-haskell/text-1.1:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2.7:=[profile?]
	>=dev-haskell/xml-conduit-1.7.0.1:=[profile?]
	>=dev-haskell/xml-types-0.3.4:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( dev-haskell/data-ordlist
		dev-haskell/quickcheck
		dev-haskell/quickcheck-unicode
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck )
"
