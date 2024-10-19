docker run --rm -v /mnt/build/out:/brave-browser/src/out:z --user 1000 $1 /bin/bash -c \
'
cd /brave-browser/src/

cd /brave-browser/src/brave 
npm run build -- Static --gn is_official_build:true --gn chrome_pgo_phase:2 --gn symbol_level:0 \
\
--gn brave_services_key:\"qjVKcxtUybh8WpKNoQ7EbgbkJTMu7omjDHKk=VrPApb8PwJyPE9eqchxedTsMEWg\"                                                                          \
--gn sardine_client_id:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"                                                                       \
--gn sardine_client_secret:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"                                                                       \
--gn google_default_client_id:\"811574891467.apps.googleusercontent.com\"                                                                        \
--gn google_default_client_secret:\"kdloedMFGdGla2P1zacGjAQh\"                                                                        \
--gn brave_infura_project_id:\"\"                                                                         \
--gn bitflyer_production_client_id:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"                                                                       \
--gn bitflyer_production_client_secret:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"                                                                       \
--gn bitflyer_production_fee_address:\"https://empty.qjz9zk\"                                                                         \
--gn bitflyer_production_url:\"https://empty.qjz9zk\"                                                                         \
--gn bitflyer_sandbox_client_id:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"                                                                          \
--gn bitflyer_sandbox_client_secret:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"                                                                          \
--gn bitflyer_sandbox_fee_address:\"https://empty.qjz9zk\"                                                                        \
--gn bitflyer_sandbox_url:\"https://empty.qjz9zk\"                                                                        \
--gn gemini_production_api_url:\"https://empty.qjz9zk\"                                                                       \
--gn gemini_production_client_id:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"                                                                         \
--gn gemini_production_client_secret:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"                                                                         \
--gn gemini_production_fee_address:\"https://empty.qjz9zk\"                                                                       \
--gn gemini_production_oauth_url:\"https://empty.qjz9zk\"                                                                         \
--gn gemini_sandbox_api_url:\"https://empty.qjz9zk\"                                                                          \
--gn gemini_sandbox_client_id:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"                                                                        \
--gn gemini_sandbox_client_secret:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"                                                                        \
--gn gemini_sandbox_fee_address:\"\"                                                                          \
--gn gemini_sandbox_oauth_url:\"https://empty.qjz9zk\"                                                                        \
--gn uphold_production_api_url:\"https://empty.qjz9zk\"                                                                       \
--gn uphold_production_client_id:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"                                                                         \
--gn uphold_production_client_secret:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"                                                                         \
--gn uphold_production_fee_address:\"https://empty.qjz9zk\"                                                                       \
--gn uphold_production_oauth_url:\"https://empty.qjz9zk\"                                                                         \
--gn uphold_sandbox_api_url:\"https://empty.qjz9zk\"                                                                          \
--gn uphold_sandbox_client_id:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"                                                                        \
--gn uphold_sandbox_client_secret:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"                                                                        \
--gn uphold_sandbox_fee_address:\"https://empty.qjz9zk\"                                                                          \
--gn uphold_sandbox_oauth_url:\"https://empty.qjz9zk\"                                                                        \
--gn zebpay_production_api_url:\"https://empty.qjz9zk\"                                                                       \
--gn zebpay_production_client_id:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"                                                                         \
--gn zebpay_production_client_secret:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"                                                                         \
--gn zebpay_production_oauth_url:\"https://empty.qjz9zk\"                                                                         \
--gn zebpay_sandbox_api_url:\"https://empty.qjz9zk\"                                                                          \
--gn zebpay_sandbox_client_id:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"                                                                        \
--gn zebpay_sandbox_client_secret:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"                                                                        \
--gn zebpay_sandbox_oauth_url:\"https://empty.qjz9zk\"                                                                        \
--gn brave_sync_endpoint:\"https://sync-v2.brave.com/v2\"                                                                         \
--gn safebrowsing_api_endpoint:\"safebrowsing.brave.com\"                                                                       \
--gn brave_variations_server_url:\"https://variations.brave.com/seed\"                                                                         \
--gn updater_prod_endpoint:\"https://go-updater.brave.com/extensions\"                                                                       \
--gn updater_dev_endpoint:\"https://go-updater-dev.bravesoftware.com/extensions\"                                                                        \
--gn rewards_grant_dev_endpoint:\"https://empty.qjz9zk\"                                                                          \
--gn rewards_grant_staging_endpoint:\"https://empty.qjz9zk\"                                                                          \
--gn rewards_grant_prod_endpoint:\"https://empty.qjz9zk\"                                                                         \
--gn brave_stats_api_key:\"fe033168-0ff8-4af6-9a7f-95e2cbfc9f4f\"                                                                         \
--gn brave_stats_updater_url:\"https://laptop-updates.brave.com\"                                                                         \
--gn sparkle_dsa_private_key_file:\"\"                                                                        \
--gn sparkle_eddsa_private_key:\"\"                                                                       \
--gn sparkle_eddsa_public_key:\"\"                                                                        \
--gn brave_services_production_domain:\"brave.com\"                                                                       \
--gn brave_services_staging_domain:\"bravesoftware.com\"                                                                          \
--gn brave_services_dev_domain:\"brave.software\"                                                                         \
--gn brave_services_key_id:\"linux-129-release\"                                                                       \
--gn service_key_aichat:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"                                                                          \
--gn service_key_stt:\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"
| tee

'