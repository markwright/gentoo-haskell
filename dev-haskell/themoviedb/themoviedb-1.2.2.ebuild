# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell API bindings for http://themoviedb.org"
HOMEPAGE="https://github.com/pjones/themoviedb"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="maintainer"

RDEPEND=">=dev-haskell/aeson-2.0:=[profile?] <dev-haskell/aeson-2.2:=[profile?]
	>=dev-haskell/http-client-0.4.31:=[profile?] <dev-haskell/http-client-0.8:=[profile?]
	>=dev-haskell/http-client-tls-0.2.2:=[profile?] <dev-haskell/http-client-tls-0.4:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/relude-1.0:=[profile?] <dev-haskell/relude-1.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/tasty-0.10 <dev-haskell/tasty-1.5
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.11 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag maintainer maintainer)
}
