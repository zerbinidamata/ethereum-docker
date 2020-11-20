// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract Rules {
    // Create a variable to store our count, set it to public to have the compiler create a getter. Will initiall be set to 0
    uint256 public approvals;
    uint256 public denies;
    string public name;
    string public premise;
    string public test_case;
    string public action;

    // Constructor does not live on chain, can only be called once on deploy
    constructor(
        string memory _name,
        string memory _premise,
        string memory _test_case,
        string memory _action
    ) public {
        approvals = 0;
        denies = 0;
        name = _name;
        premise = _premise;
        test_case = _test_case;
        action = _action;
    }

    function incrementAprovals() external {
        approvals++;
    }

    function decrementApprovals() external {
        approvals--;
    }

    function incrementDenies() external {
        approvals++;
    }

    function decrementDenies() external {
        approvals--;
    }

    function getRule()
        public
        view
        returns (
            string memory,
            string memory,
            string memory,
            string memory,
            uint256,
            uint256
        )
    {
        return (name, premise, test_case, action, approvals, denies);
    }
}
