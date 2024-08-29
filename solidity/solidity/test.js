const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("StorageDemo", function () {
  let storageDemo;

  beforeEach(async function () {
    const StorageDemo = await ethers.getContractFactory("StorageDemo");
    storageDemo = await StorageDemo.deploy(100);
    await storageDemo.deployed();
  });

  it("Should initialize with the correct value", async function () {
    expect(await storageDemo.getData()).to.equal(100);
  });

  it("Should update storedData correctly", async function () {
    await storageDemo.updateData(200);
    expect(await storageDemo.getData()).to.equal(410);
  });

  it("Should process input data correctly", async function () {
    const inputData = [1, 2, 3];
    const result = await storageDemo.processInputData(inputData);
    expect(result).to.deep.equal([2, 4, 6]);
  });
});
