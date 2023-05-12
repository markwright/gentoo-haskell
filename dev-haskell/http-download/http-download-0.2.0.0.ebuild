# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Verified downloads with retries"
HOMEPAGE="https://github.com/commercialhaskell/http-download#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RESTRICT=test #requires network access

RDEPEND="dev-haskell/base64-bytestring:=[profile?]
	dev-haskell/conduit:=[profile?]
	dev-haskell/conduit-extra:=[profile?]
	dev-haskell/cryptonite:=[profile?]
	dev-haskell/cryptonite-conduit:=[profile?]
	dev-haskell/exceptions:=[profile?]
	dev-haskell/http-client:=[profile?]
	dev-haskell/http-conduit:=[profile?]
	dev-haskell/http-types:=[profile?]
	dev-haskell/memory:=[profile?]
	dev-haskell/path:=[profile?]
	dev-haskell/path-io:=[profile?]
	dev-haskell/retry:=[profile?]
	dev-haskell/rio:=[profile?]
	dev-haskell/rio-prettyprint:=[profile?]
	>=dev-lang/ghc-8.2.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0.0.2
	test? ( dev-haskell/hspec
		dev-haskell/hspec-discover )
"
