# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Generate Haskell bindings for GObject Introspection capable libraries"
HOMEPAGE="https://github.com/haskell-gi/haskell-gi"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/ansi-terminal-0.10:=[profile?]
	>=dev-haskell/attoparsec-0.13:=[profile?]
	>=dev-haskell/cabal-1.24:=[profile?]
	>=dev-haskell/haskell-gi-base-0.26.1:=[profile?] <dev-haskell/haskell-gi-base-0.27:=[profile?]
	dev-haskell/pretty-show:=[profile?]
	>=dev-haskell/regex-tdfa-1.2:=[profile?]
	dev-haskell/safe:=[profile?]
	>=dev-haskell/text-1.0:=[profile?]
	dev-haskell/xdg-basedir:=[profile?]
	>=dev-haskell/xml-conduit-1.3:=[profile?]
	>=dev-lang/ghc-8.8.1:=
	dev-libs/glib:2
	dev-libs/gobject-introspection
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0 <dev-haskell/cabal-4
	>=dev-haskell/cabal-doctest-1
	test? ( >=dev-haskell/doctest-0.8 )
"
BDEPEND="virtual/pkgconfig
"
GHC_BOOTSTRAP_PACKAGES=( cabal-doctest )
