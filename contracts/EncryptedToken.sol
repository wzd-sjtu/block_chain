pragma solidity >= 0.5.0 < 0.7.0;

contract EncryptedToken {
  uint256 INITIAL_SUPPLY = 666666;//货币总量
  mapping(address => uint256) balances;//键值对变量  用来存储钱包地址
  //下面这行函数暂时不清楚是干什么的，将货币总量传递？
  constructor() public {
        balances[msg.sender] = INITIAL_SUPPLY;
    }
  // 转账到一个指定的地址  指定的地点
  function transfer(address _to, uint256 _amount) public {
    assert(balances[msg.sender] >= _amount);
    balances[msg.sender] -= _amount;
    balances[_to] += _amount;
  }
  // 查看指定地址的余额
  function balanceOf(address _owner) public view returns (uint256) {
    return balances[_owner];
  }
}

