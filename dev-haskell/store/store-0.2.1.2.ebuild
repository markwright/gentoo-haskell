# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fast binary serialization"
HOMEPAGE="https://github.com/fpco/store#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base-orphans-0.4.3:=[profile?]
	>=dev-haskell/base64-bytestring-0.1.1:=[profile?]
	>=dev-haskell/conduit-1.2.3.1:=[profile?]
	>=dev-haskell/cryptohash-0.11.6:=[profile?]
	>=dev-haskell/fail-4.9.0.0:=[profile?]
	>=dev-haskell/hashable-1.2.3.1:=[profile?]
	>=dev-haskell/hspec-2.1.2:=[profile?]
	>=dev-haskell/hspec-smallcheck-0.3.0:=[profile?]
	>=dev-haskell/lifted-base-0.2.3.3:=[profile?]
	>=dev-haskell/monad-control-0.3.3.0:=[profile?]
	>=dev-haskell/mono-traversable-0.7.0:=[profile?]
	>=dev-haskell/primitive-0.6:=[profile?]
	>=dev-haskell/resourcet-1.1.3.3:=[profile?]
	>=dev-haskell/safe-0.3.8:=[profile?]
	>=dev-haskell/semigroups-0.8:=[profile?]
	>=dev-haskell/smallcheck-1.1.1:=[profile?]
	>=dev-haskell/store-core-0.2.0.2:=[profile?] <dev-haskell/store-core-0.3:=[profile?]
	>=dev-haskell/syb-0.4.4:=[profile?]
	>=dev-haskell/text-1.2.0.4:=[profile?]
	>=dev-haskell/th-lift-0.7.1:=[profile?]
	>=dev-haskell/th-lift-instances-0.1.4:=[profile?]
	>=dev-haskell/th-orphans-0.12.2:=[profile?]
	>=dev-haskell/th-reify-many-0.1.6:=[profile?]
	>=dev-haskell/th-utilities-0.2:=[profile?]
	>=dev-haskell/unordered-containers-0.2.5.1:=[profile?]
	>=dev-haskell/vector-0.10.12.3:=[profile?]
	>=dev-haskell/void-0.5.11:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/cereal
		dev-haskell/cereal-vector
		dev-haskell/criterion
		dev-haskell/vector-binary-instances
		dev-haskell/weigh )
"
