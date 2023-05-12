# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999
#hackport: flags: -test,-halvm

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="AES and common modes using AES-NI when available"
HOMEPAGE="https://github.com/TomMD/cipher-aes128"
SRC_URI="${SRC_URI}
	https://github.com/TomMD/cipher-aes128/commit/4f30d283de04a65cde5aab4500dd7d7b409602d5.patch -> ${P}-ghc-9.2.patch"

PATCHES=( "${DISTDIR}/${P}-ghc-9.2.patch" )

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/cereal:=[profile?]
	>=dev-haskell/crypto-api-0.13:=[profile?]
	dev-haskell/tagged:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1 <dev-haskell/cabal-3.7
	|| ( dev-lang/ghc >=dev-haskell/process-1.0 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-halvm \
		--flag=-test
}
