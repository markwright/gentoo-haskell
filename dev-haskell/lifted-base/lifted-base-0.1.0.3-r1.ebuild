# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="lifted IO operations from the base library"
HOMEPAGE="https://github.com/basvandijk/lifted-base"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-haskell/base-unicode-symbols-0.1.1[profile?]
		<dev-haskell/base-unicode-symbols-0.3[profile?]
		=dev-haskell/monad-control-0.3*[profile?]
		=dev-haskell/transformers-base-0.4*[profile?]
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.9.2
		test? ( dev-haskell/hunit
			<dev-haskell/test-framework-0.7
			<dev-haskell/test-framework-hunit-0.3
		)"

PATCHES=("${FILESDIR}/${PN}-0.1.0.1-test-ghc-6.12.patch")

src_prepare() {
	base_src_prepare
	sed -e 's@test-framework       >= 0.2.4 && < 0.5@test-framework       >= 0.2.4 \&\& < 0.7@' \
		-e 's@transformers         >= 0.2   && < 0.3@transformers         >= 0.2   \&\& < 0.4@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}

src_configure() {
	cabal_src_configure $(use_enable test tests)
}
