# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Backend for the persistent library using postgresql"
HOMEPAGE="http://www.yesodweb.com/book/persistent"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.6.2:=[profile?]
	dev-haskell/blaze-builder:=[profile?]
	>=dev-haskell/conduit-1.2.8:=[profile?]
	>=dev-haskell/monad-logger-0.3.4:=[profile?]
	>=dev-haskell/persistent-2.8.1:=[profile?] <dev-haskell/persistent-3:=[profile?]
	>=dev-haskell/postgresql-libpq-0.6.1:=[profile?] <dev-haskell/postgresql-libpq-0.10:=[profile?]
	>=dev-haskell/postgresql-simple-0.4.0:=[profile?] <dev-haskell/postgresql-simple-0.6:=[profile?]
	dev-haskell/resource-pool:=[profile?]
	>=dev-haskell/resourcet-1.1:=[profile?]
	>=dev-haskell/text-0.7:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"
