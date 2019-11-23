# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A modern parser combinator library with convenient diagnostics"
HOMEPAGE="https://github.com/ekmett/trifecta/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # broken on USE=doc

RDEPEND=">=dev-haskell/ansi-terminal-0.6:=[profile?] <dev-haskell/ansi-terminal-0.11:=[profile?]
	>=dev-haskell/blaze-builder-0.3.0.1:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/blaze-html-0.5:=[profile?] <dev-haskell/blaze-html-0.10:=[profile?]
	>=dev-haskell/blaze-markup-0.5:=[profile?] <dev-haskell/blaze-markup-0.9:=[profile?]
	>=dev-haskell/charset-0.3.5.1:=[profile?] <dev-haskell/charset-1:=[profile?]
	>=dev-haskell/comonad-4:=[profile?] <dev-haskell/comonad-6:=[profile?]
	>=dev-haskell/fail-4.9:=[profile?] <dev-haskell/fail-4.10:=[profile?]
	>=dev-haskell/fingertree-0.1:=[profile?] <dev-haskell/fingertree-0.2:=[profile?]
	>=dev-haskell/hashable-1.2.1:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/lens-4.0:=[profile?] <dev-haskell/lens-5:=[profile?]
	>=dev-haskell/mtl-2.0.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/parsers-0.12.1:=[profile?] <dev-haskell/parsers-1:=[profile?]
	>=dev-haskell/prettyprinter-1.2:=[profile?] <dev-haskell/prettyprinter-2:=[profile?]
	>=dev-haskell/prettyprinter-ansi-terminal-1.1:=[profile?] <dev-haskell/prettyprinter-ansi-terminal-2:=[profile?]
	>=dev-haskell/profunctors-4.0:=[profile?] <dev-haskell/profunctors-6:=[profile?]
	>=dev-haskell/reducers-3.10:=[profile?] <dev-haskell/reducers-4:=[profile?]
	>=dev-haskell/semigroups-0.8.3.1:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-haskell/unordered-containers-0.2.1:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/utf8-string-0.3.6:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	>=dev-haskell/cabal-doctest-1 <dev-haskell/cabal-doctest-1.1
	test? ( >=dev-haskell/doctest-0.11.1 <dev-haskell/doctest-0.17
		dev-haskell/quickcheck )
"
