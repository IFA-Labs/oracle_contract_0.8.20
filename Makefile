# Load .env file
include .env
export $(shell sed 's/=.*//' .env)

# Deploy to Sepolia
deploy-sepolia:
	@forge script script/DeployPriceFeed.s.sol:DeployPriceFeed \
		--rpc-url $(SEPOLIA_RPC_URL) \
		--private-key $(private_key) \
		--etherscan-api-key $(ETHERSCAN_API_KEY) \
		--verify \
		--broadcast
# Deploy to Base Sepolia
deploy-base-sepolia:
	@forge script script/DeployPriceFeed.s.sol:DeployPriceFeed \
		--rpc-url $(BASE_SEPOLIA_RPC_URL) \
		--private-key $(private_key) \
		--etherscan-api-key $(BASESCAN_API_KEY) \
		--verify \
		--broadcast
# Deploy to Base mainnet
deploy-base-mainnet:
	@forge script script/DeployPriceFeed.s.sol:DeployPriceFeed \
		--rpc-url $(BASE_RPC_URL) \
		--private-key $(private_key) \
		--etherscan-api-key $(BASESCAN_API_KEY) \
		--verify \
		--broadcast
deploy-assestchain-test:
	@forge script script/DeployPriceFeed.s.sol:DeployPriceFeed \
		--rpc-url $(ASSETCHAINTEST_RPC_URL) \
		--private-key $(private_key) \
		--verify \
		--verifier blockscout \
		--verifier-url https://scan-testnet.assetchain.org/api \
		--broadcast
deploy-assestchain-MAINNET:
	@forge script script/DeployPriceFeed.s.sol:DeployPriceFeed \
		--rpc-url $(ASSETCHAINMAINNET_RPC_URL) \
		--private-key $(private_key) \
		--verify \
		--verifier blockscout \
		--verifier-url https://scan.assetchain.org/api \
		--broadcast
deploy-chiado:
	@forge script script/DeployPriceFeed.s.sol:DeployPriceFeed \
		--rpc-url $(CHIADO_RPC_URL) \
		--private-key $(private_key) \
		--verify \
		--verifier blockscout \
		--verifier-url https://gnosis-chiado.blockscout.com/api/ \
		--broadcast
		
deploy-gnosis:
	@forge script script/DeployPriceFeed.s.sol:DeployPriceFeed \
		--rpc-url $(GNOSIS_RPC_URL) \
		--private-key $(private_key) \
		--verify \
		--verifier blockscout \
		--verifier-url https://gnosis.blockscout.com/api/ \
		--broadcast
