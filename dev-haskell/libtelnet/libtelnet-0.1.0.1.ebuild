# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: example:examples

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Bindings to libtelnet"
HOMEPAGE="https://git.sr.ht/~jack/libtelnet-haskell"

LICENSE="GPL-3+"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="examples"

CABAL_CHDEPS=(
	'base >= 4.9 && < 4.17' 'base >=4.9'
	'bytestring >= 0.10.6.0 && < 0.12' 'bytestring >= 0.10.6.0'
)

RDEPEND="
	>=dev-lang/ghc-9.0.2:=
	examples? (
		>=dev-haskell/monad-loops-0.4.3:=[profile?] <dev-haskell/monad-loops-0.5
		>=dev-haskell/network-simple-0.4:=[profile?] <dev-haskell/network-simple-0.5
	)
	net-libs/libtelnet
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	virtual/pkgconfig
"

# Rename example executable
src_prepare() {
	if use examples; then
		export CABAL_CHBINS=(
			'example' "haskell-${PN}-example"
		)
	fi

	haskell-cabal_src_prepare
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples example)
}
