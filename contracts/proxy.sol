// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

import "./implementation.sol"; // Adjust the path according to your project structure
import "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";
// import "@openzeppelin/contracts/proxy/ERC1967/ERC1967Upgrade.sol";

contract SwisstronikProxy is ERC1967Proxy {
    constructor(address implementation, string memory _message) 
        ERC1967Proxy(implementation, abi.encodeWithSelector(Swisstronik(implementation).initialize.selector, _message)) 
    {}

    /**
     * @dev upgradeTo allows the admin to upgrade the implementation contract to a new one.
     * @param newImplementation The address of the new implementation contract.
     */
    function upgradeTo(address newImplementation) external {
        _upgradeTo(newImplementation);
    }
}




