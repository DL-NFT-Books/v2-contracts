// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

/**
 * This is the registry contract  that stores information about
 * the other contracts. Its purpose is to keep track of the
 * contracts, provide upgradeability mechanism and dependency injection mechanism.
 */
interface IContractsRegistry {
    /// @notice Used in dependency injection mechanism
    /// @return TokenFactory contract address
    function getTokenFactoryContract() external view returns (address);

    /// @notice Used in dependency injection mechanism
    /// @return TokenRegistry contract address
    function getTokenRegistryContract() external view returns (address);

    /// @notice Used in dependency injection mechanism
    /// @return Marketplace contract address
    function getMarketplaceContract() external view returns (address);

    /// @notice Used in dependency injection mechanism
    /// @return RoleManager contract address
    function getRoleManagerContract() external view returns (address);
}
