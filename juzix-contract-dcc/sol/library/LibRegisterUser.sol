pragma solidity ^0.4.2;


import "../utillib/LibInt.sol";
import "../utillib/LibString.sol";
import "../utillib/LibStack.sol";
import "../utillib/LibJson.sol";

library LibRegisterUser {
    using LibInt for *;
    using LibString for *;
    using LibJson for *;
    using LibRegisterUser for *;

    struct RegisterUser {
        string uuid;
        string userId;//用户ID
        address userAddr;//钱包地址
        string account;//用户账户
        string name;//用户名称
        string orgId;//所属组织ID
        string orgName;//组织名称
        uint certType;//账户类型  1 文件证书  2 U-key证书
        string mobile;//手机号
        string email;//用户邮箱
        string desc;//备注
        uint accountStatus;//账号状态 1待激活 2已激活 3已拒绝
        string publicKey;//用户公钥
        string cipherGroupKey;//用户群私钥
    }
    /**
    * fromJson for LibRegisterUser
    * Generated by juzhen SolidityStructTool automatically.
    * Not to edit this code manually.
    */
    function fromJson(RegisterUser storage _self, string _json) internal returns (bool succ) {
        _self.reset();

        if (!_json.isJson())
        return false;

        _self.uuid = _json.jsonRead("uuid");
        _self.userId = _json.jsonRead("userId");
        _self.userAddr = _json.jsonRead("userAddr").toAddress();
        _self.account = _json.jsonRead("account");
        _self.name = _json.jsonRead("name");
        _self.orgId = _json.jsonRead("orgId");
        _self.orgName = _json.jsonRead("orgName");
        _self.certType = _json.jsonRead("certType").toUint();
        _self.mobile = _json.jsonRead("mobile");
        _self.email = _json.jsonRead("email");
        _self.desc = _json.jsonRead("desc");
        _self.accountStatus = _json.jsonRead("accountStatus").toUint();
        if (_self.accountStatus == 0) _self.accountStatus == 1;
        _self.publicKey = _json.jsonRead("publicKey");
        _self.cipherGroupKey = _json.jsonRead("cipherGroupKey");

        return true;
    }

    /**
    * toJson for LibRegisterUser
    * Generated by juzhen SolidityStructTool automatically.
    * Not to edit this code manually.
    */
    function toJson(RegisterUser storage _self) internal constant returns (string _json) {
        LibStack.push("{");
        LibStack.appendKeyValue("uuid", _self.uuid);
        LibStack.appendKeyValue("userId", _self.userId);
        LibStack.appendKeyValue("userAddr", _self.userAddr);
        LibStack.appendKeyValue("account", _self.account);
        LibStack.appendKeyValue("name", _self.name);
        LibStack.appendKeyValue("orgId", _self.orgId);
        LibStack.appendKeyValue("orgName", _self.orgName);
        LibStack.appendKeyValue("certType", _self.certType);
        LibStack.appendKeyValue("mobile", _self.mobile);
        LibStack.appendKeyValue("email", _self.email);
        LibStack.appendKeyValue("desc", _self.desc);
        LibStack.appendKeyValue("accountStatus", _self.accountStatus);
        LibStack.appendKeyValue("publicKey", _self.publicKey);
        LibStack.appendKeyValue("cipherGroupKey", _self.cipherGroupKey);
        LibStack.append("}");
        _json = LibStack.pop();
    }

    /**
    * fromJsonArray for LibRegisterUser
    * Generated by juzhen SolidityStructTool automatically.
    * Not to edit this code manually.
    */
    function fromJsonArray(RegisterUser[] storage _self, string _json) internal returns (bool succ) {
        _self.length = 0;

        if (!_json.isJson())
        return false;

        while (true) {
            string memory key = "[".concat(_self.length.toString(), "]");
            if (!_json.jsonKeyExists(key))
            break;

            _self.length++;
            _self[_self.length - 1].fromJson(_json.jsonRead(key));
        }

        return true;
    }

    /**
    * toJsonArray for LibRegisterUser
    * Generated by juzhen SolidityStructTool automatically.
    * Not to edit this code manually.
    */
    function toJsonArray(RegisterUser[] storage _self) internal constant returns (string _json) {
        _json = _json.concat("[");
        for (uint i = 0; i < _self.length; ++i) {
            if (i == 0)
            _json = _json.concat(_self[i].toJson());
            else
            _json = _json.concat(",", _self[i].toJson());
        }
        _json = _json.concat("]");
    }

    /**
    * update for LibRegisterUser
    * Generated by juzhen SolidityStructTool automatically.
    * Not to edit this code manually.
    */
    function update(RegisterUser storage _self, string _json) internal returns (bool succ) {
        if (!_json.isJson())
        return false;

        if (_json.jsonKeyExists("uuid"))
        _self.uuid = _json.jsonRead("uuid");
        if (_json.jsonKeyExists("userId"))
        _self.userId = _json.jsonRead("userId");
        if (_json.jsonKeyExists("userAddr"))
        _self.userAddr = _json.jsonRead("userAddr").toAddress();
        if (_json.jsonKeyExists("account"))
        _self.account = _json.jsonRead("account");
        if (_json.jsonKeyExists("name"))
        _self.name = _json.jsonRead("name");
        if (_json.jsonKeyExists("orgId"))
        _self.orgId = _json.jsonRead("orgId");
        if (_json.jsonKeyExists("orgName"))
        _self.orgName = _json.jsonRead("orgName");
        if (_json.jsonKeyExists("certType"))
        _self.certType = _json.jsonRead("certType").toUint();
        if (_json.jsonKeyExists("mobile"))
        _self.mobile = _json.jsonRead("mobile");
        if (_json.jsonKeyExists("email"))
        _self.email = _json.jsonRead("email");
        if (_json.jsonKeyExists("desc"))
        _self.desc = _json.jsonRead("desc");
        if (_json.jsonKeyExists("accountStatus"))
        _self.accountStatus = _json.jsonRead("accountStatus").toUint();
        if (_json.jsonKeyExists("publicKey"))
        _self.publicKey = _json.jsonRead("publicKey");
        if (_json.jsonKeyExists("cipherGroupKey"))
        _self.cipherGroupKey = _json.jsonRead("cipherGroupKey");

        return true;
    }

    /**
    * reset for LibRegisterUser
    * Generated by juzhen SolidityStructTool automatically.
    * Not to edit this code manually.
    */
    function reset(RegisterUser storage _self) internal {
        delete _self.uuid;
        delete _self.userId;
        delete _self.userAddr;
        delete _self.account;
        delete _self.name;
        delete _self.orgId;
        delete _self.orgName;
        delete _self.certType;
        delete _self.mobile;
        delete _self.email;
        delete _self.desc;
        delete _self.accountStatus;
        delete _self.publicKey;
        delete _self.cipherGroupKey;
    }
}
