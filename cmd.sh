docker run -it --rm -v $PWD/out:/brave-browser/src/out:z -v $PWD/patches:/brave-browser/src/patches:z --user 1000  brave /bin/bash -c \
"
cd /brave-browser/src/

git apply patches/optimize.patch
touch -acm -t 197001010000.00 build/config/compiler/BUILD.gn +

cd /brave-browser/src/brave 
npm run build -- Static --gn is_official_build:true --gn chrome_pgo_phase:2 \
\
--gn brave_services_key:dummy \
--gn sardine_client_id:dummy \
--gn sardine_client_secret:dummy \
--gn google_default_client_id:dummy \
--gn google_default_client_secret:dummy \
--gn brave_infura_project_id:dummy \
--gn bitflyer_production_client_id:dummy \
--gn bitflyer_production_client_secret:dummy \
--gn bitflyer_production_fee_address:dummy \
--gn bitflyer_production_url:dummy \
--gn bitflyer_sandbox_client_id:dummy \
--gn bitflyer_sandbox_client_secret:dummy \
--gn bitflyer_sandbox_fee_address:dummy \
--gn bitflyer_sandbox_url:dummy \
--gn gemini_production_api_url:dummy \
--gn gemini_production_client_id:dummy \
--gn gemini_production_client_secret:dummy \
--gn gemini_production_fee_address:dummy \
--gn gemini_production_oauth_url:dummy \
--gn gemini_sandbox_api_url:dummy \
--gn gemini_sandbox_client_id:dummy \
--gn gemini_sandbox_client_secret:dummy \
--gn gemini_sandbox_fee_address:dummy \
--gn gemini_sandbox_oauth_url:dummy \
--gn uphold_production_api_url:dummy \
--gn uphold_production_client_id:dummy \
--gn uphold_production_client_secret:dummy \
--gn uphold_production_fee_address:dummy \
--gn uphold_production_oauth_url:dummy \
--gn uphold_sandbox_api_url:dummy \
--gn uphold_sandbox_client_id:dummy \
--gn uphold_sandbox_client_secret:dummy \
--gn uphold_sandbox_fee_address:dummy \
--gn uphold_sandbox_oauth_url:dummy \
--gn zebpay_production_api_url:dummy \
--gn zebpay_production_client_id:dummy \
--gn zebpay_production_client_secret:dummy \
--gn zebpay_production_oauth_url:dummy \
--gn zebpay_sandbox_api_url:dummy \
--gn zebpay_sandbox_client_id:dummy \
--gn zebpay_sandbox_client_secret:dummy \
--gn zebpay_sandbox_oauth_url:dummy \
--gn brave_sync_endpoint:dummy \
--gn safebrowsing_api_endpoint:dummy \
--gn brave_variations_server_url:dummy \
--gn updater_prod_endpoint:dummy \
--gn updater_dev_endpoint:dummy \
--gn rewards_grant_dev_endpoint:dummy \
--gn rewards_grant_staging_endpoint:dummy \
--gn rewards_grant_prod_endpoint:dummy \
--gn brave_stats_api_key:dummy \
--gn brave_stats_updater_url:dummy \
--gn sparkle_dsa_private_key_file:dummy \
--gn sparkle_eddsa_private_key:dummy \
--gn sparkle_eddsa_public_key:dummy \
--gn brave_services_production_domain:dummy \
--gn brave_services_staging_domain:dummy \
--gn brave_services_dev_domain:dummy \
--gn brave_services_key_id:dummy \
--gn service_key_aichat:dummy \

"
