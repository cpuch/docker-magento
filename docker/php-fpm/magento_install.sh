#!/bin/bash

bin/magento setup:install \
--base-url=http://localhost \
--db-host=db \
--db-name=magento2 \
--db-user=magento2 \
--db-password=p@ssw0rd \
--backend-frontname=admin \
--admin-firstname=Admin \
--admin-lastname=Magento \
--admin-email=cedric.puchalver@gmail.com \
--admin-user=admin \
--admin-password=admin123 \
--language=fr_FR \
--currency=EUR \
--timezone=Europe/Paris \
--use-rewrites=1 \
--search-engine=opensearch \
--opensearch-host=opensearch-node1 \
--opensearch-port=9200 \
--opensearch-index-prefix=magento2 \
--opensearch-timeout=15 \
--disable-modules=Magento_TwoFactorAuth
