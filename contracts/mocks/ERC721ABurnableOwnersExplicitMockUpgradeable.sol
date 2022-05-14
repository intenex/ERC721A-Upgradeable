// SPDX-License-Identifier: MIT
// ERC721A Contracts v3.3.0
// Creators: Chiru Labs

pragma solidity ^0.8.4;

import "../extensions/ERC721ABurnableUpgradeable.sol";
import "../extensions/ERC721AOwnersExplicitUpgradeable.sol";
import { ERC721AStorage } from "../ERC721AStorage.sol";
import "../Initializable.sol";

contract ERC721ABurnableOwnersExplicitMockUpgradeable is Initializable, ERC721AUpgradeable, ERC721ABurnableUpgradeable, ERC721AOwnersExplicitUpgradeable {
    using ERC721AStorage for ERC721AStorage.Layout;
    function __ERC721ABurnableOwnersExplicitMock_init(string memory name_, string memory symbol_) internal onlyInitializing {
        __ERC721A_init_unchained(name_, symbol_);
        __ERC721ABurnable_init_unchained();
        __ERC721AOwnersExplicit_init_unchained();
        __ERC721ABurnableOwnersExplicitMock_init_unchained(name_, symbol_);
    }

    function __ERC721ABurnableOwnersExplicitMock_init_unchained(string memory, string memory) internal onlyInitializing {}

    function exists(uint256 tokenId) public view returns (bool) {
        return _exists(tokenId);
    }

    function safeMint(address to, uint256 quantity) public {
        _safeMint(to, quantity);
    }

    function setOwnersExplicit(uint256 quantity) public {
        _setOwnersExplicit(quantity);
    }

    function getOwnershipAt(uint256 index) public view returns (TokenOwnership memory) {
        return ERC721AStorage.layout()._ownerships[index];
    }
}
