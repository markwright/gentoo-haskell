# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.3.0.9999
#hackport: flags: +cabal-v1,+gentoo-tests,+pedantic

CABAL_FEATURES="test-suite"
EGIT_REPO_URI="https://github.com/gentoo-haskell/hackport.git"

inherit git-r3 haskell-cabal

DESCRIPTION="Hackage and Portage integration tool"
HOMEPAGE="https://github.com/gentoo-haskell/hackport#readme"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS=""
IUSE="profile"

RDEPEND="
	>=dev-haskell/async-2.0:=
	>=dev-haskell/base16-bytestring-0.1.1:=
	>=dev-haskell/base64-bytestring-1.0:=
	>=dev-haskell/cryptohash-sha256-0.11:=
	>=dev-haskell/echo-0.1.3:=
	>=dev-haskell/ed25519-0.0:=
	>=dev-haskell/edit-distance-0.2.2:=
	dev-haskell/extensible-exceptions:=
	>=dev-haskell/hashable-1.0:=
	>=dev-haskell/http-4000.1.5:=
	dev-haskell/lifted-base:=
	>=dev-haskell/lukko-0.1:=
	dev-haskell/monad-control:=
	>=dev-haskell/network-3.0:=
	>=dev-haskell/network-uri-2.6.0.2:=
	dev-haskell/optparse-applicative:=
	>=dev-haskell/parallel-3.2.1.0:=
	>=dev-haskell/parsec-3.1.13.0:=
	dev-haskell/parser-combinators:=
	dev-haskell/quickcheck:2=
	>=dev-haskell/random-1.2:=
	>=dev-haskell/regex-base-0.94.0.0:=
	>=dev-haskell/regex-posix-0.96.0.0:=
	>=dev-haskell/resolv-0.1.1:=
	>=dev-haskell/safe-exceptions-0.1.7.0:=
	dev-haskell/split:=
	>=dev-haskell/tar-0.5.0.3:=
	>=dev-haskell/text-1.2.3.0:=
	dev-haskell/xml:=
	>=dev-haskell/zlib-0.5.3:=
	>=dev-lang/ghc-8.10.6:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
	test? (
		dev-haskell/base-compat
		>=dev-haskell/cabal-doctest-1.0
		>=dev-haskell/doctest-0.8
		dev-haskell/glob
		>=dev-haskell/hspec-2.0
		dev-haskell/hunit
		>=dev-haskell/quickcheck-2.0
	)
"

src_prepare() {
	default
	sed -e 's/^version:.*/&.9999/' -i ${PN}.cabal || die # just to distinguish from release install
}

src_configure() {
	if use test; then
		export GHC_BOOTSTRAP_PACKAGES=(
			cabal-doctest
		)
	fi

	haskell-cabal_src_configure \
		--flag=cabal-v1 \
		--flag=gentoo-tests \
		--flag=pedantic \
		$(cabal_flag profile profile)
}

src_install() {
	haskell-cabal_src_install
	doman man/hackport.1
}
