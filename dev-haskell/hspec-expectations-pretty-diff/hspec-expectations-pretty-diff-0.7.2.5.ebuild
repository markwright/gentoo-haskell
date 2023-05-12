# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal
# Tests fail: <https://github.com/unrelentingtech/hspec-expectations-pretty-diff/issues/7>
RESTRICT="test"

DESCRIPTION="Catchy combinators for HUnit"
HOMEPAGE="https://github.com/myfreeweb/hspec-expectations-pretty-diff#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/ansi-terminal:=[profile?]
	dev-haskell/diff:=[profile?]
	dev-haskell/hscolour:=[profile?]
	dev-haskell/hunit:=[profile?]
	dev-haskell/nicify-lib:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1"
#	test? ( dev-haskell/aeson
#		dev-haskell/hspec
#		>=dev-haskell/hunit-1.3.0.0 )
