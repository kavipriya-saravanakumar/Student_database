const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = builtModule("StudentDBModule", (m) => {
    const students = m.contract("StudentDB");

    return { students };
});
