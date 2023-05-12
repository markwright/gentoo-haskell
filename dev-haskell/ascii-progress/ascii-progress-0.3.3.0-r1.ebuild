# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A simple progress bar for the console"
HOMEPAGE="https://github.com/yamadapc/haskell-ascii-progress"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="examples"

PATCHES=( "${FILESDIR}/${PN}-0.3.3.0-fix-examples.patch" )

RDEPEND=">=dev-haskell/async-2.0.1.5:=[profile?]
	>=dev-haskell/concurrent-output-1.7:=[profile?]
	>=dev-haskell/data-default-0.5.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	examples? ( dev-haskell/random:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hspec-2.1 <dev-haskell/hspec-3
		>=dev-haskell/quickcheck-2.6 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples examples)
}
