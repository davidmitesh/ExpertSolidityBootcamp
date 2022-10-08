pragma solidity 0.8.0;

contract DynamicArray {
    uint256[] public list;
    event Removed(uint256 value);

    function insert_element(uint256 _x) external {
        list.push(_x);
    }

    function delete_element(uint256 index) public {
        uint256 lastIndex = list.length - 1;
        uint256 valueToRemove = list[index];
        if (lastIndex != index) {
            list[index] = list[lastIndex];
        }
        list.pop();
        emit Removed(valueToRemove);
    }

    function delete_elements(uint256[] calldata indexes) external {
        for (uint i = 0; i < indexes.length; i++) {
            delete_element(indexes[i]);
        }
    }
}
