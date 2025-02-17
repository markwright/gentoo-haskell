# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="InfluxDB client library for Haskell"
HOMEPAGE="https://github.com/maoe/influxdb-haskell"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="examples"
RESTRICT+="test" #requires a running influxdb instance

RDEPEND=">=dev-haskell/aeson-0.7:=[profile?] <dev-haskell/aeson-2.3:=[profile?]
	<dev-haskell/attoparsec-0.15:=[profile?]
	>=dev-haskell/attoparsec-aeson-2.1:=[profile?] <dev-haskell/attoparsec-aeson-2.3:=[profile?]
	>=dev-haskell/clock-0.7:=[profile?] <dev-haskell/clock-0.9:=[profile?]
	>=dev-haskell/http-client-0.5:=[profile?] <dev-haskell/http-client-0.8:=[profile?]
	>=dev-haskell/http-types-0.8.6:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/lens-4.9:=[profile?] <dev-haskell/lens-5.4:=[profile?]
	>=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-3.3:=[profile?]
	>=dev-haskell/optional-args-1.0:=[profile?] <dev-haskell/optional-args-1.1:=[profile?]
	>=dev-haskell/scientific-0.3.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/tagged-0.1:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	<dev-haskell/text-2.2:=[profile?]
	<dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	examples? ( >=dev-haskell/foldl-1.1.3:=[profile?] <dev-haskell/foldl-1.5:=[profile?]
			dev-haskell/mwc-random:=[profile?] )
	!examples? ( <dev-haskell/foldl-1.5:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0 <dev-haskell/cabal-3.13
	>=dev-haskell/cabal-doctest-1 <dev-haskell/cabal-doctest-1.1
	test? ( >=dev-haskell/doctest-0.11.3 <dev-haskell/doctest-0.24
		>=dev-haskell/raw-strings-qq-1.1 <dev-haskell/raw-strings-qq-1.2
		<dev-haskell/tasty-1.6
		<dev-haskell/tasty-hunit-1.11 )
"

src_configure() {
	if use test; then
		export GHC_BOOTSTRAP_PACKAGES=(
			cabal-doctest
		)
	fi

	haskell-cabal_src_configure \
		$(cabal_flag examples examples)
}
