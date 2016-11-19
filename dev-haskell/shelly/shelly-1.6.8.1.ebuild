# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999
#hackport: flags: build-examples:examples

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="shell-like (systems) programming in Haskell"
HOMEPAGE="https://github.com/yesodweb/Shelly.hs"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples lifted"

RDEPEND="dev-haskell/async:=[profile?]
	dev-haskell/enclosed-exceptions:=[profile?]
	>=dev-haskell/exceptions-0.6:=[profile?] <dev-haskell/exceptions-0.9:=[profile?]
	dev-haskell/lifted-async:=[profile?]
	dev-haskell/lifted-base:=[profile?]
	>=dev-haskell/monad-control-0.3.2:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/mtl-2:=[profile?]
	<dev-haskell/system-fileio-0.4:=[profile?]
	>=dev-haskell/system-filepath-0.4.7:=[profile?] <dev-haskell/system-filepath-0.5:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	<dev-haskell/unix-compat-0.5:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/hspec-1.5
		>=dev-haskell/hunit-1.2
		>=dev-haskell/text-0.11 )
"

PATCHES=("${FILESDIR}"/${P}-ghc-8.0.2_rc1.patch)

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples build-examples) \
		$(cabal_flag lifted lifted)
}
