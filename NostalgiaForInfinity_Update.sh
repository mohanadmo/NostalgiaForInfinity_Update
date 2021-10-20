#!/bin/bash

ROOT_PATH="PATH_TO_UR_FT_NFI_BOTS"
NFI_PATH="${ROOT_PATH}/nfi/NostalgiaForInfinity/NostalgiaForInfinityNext.py"
FT_BINANCE_USDT_PATH="${ROOT_PATH}/ft_userdata_binance_usdt/user_data/strategies/NostalgiaForInfinityNext.py"
FT_BINANCE_BUSD_PATH="${ROOT_PATH}/ft_userdata_binance_busd/user_data/strategies/NostalgiaForInfinityNext.py"
FT_BINANCE_ETH_PATH="${ROOT_PATH}/ft_userdata_binance_eth/user_data/strategies/NostalgiaForInfinityNext.py"
FT_BINANCE_BTC_PATH="${ROOT_PATH}/ft_userdata_binance_btc/user_data/strategies/NostalgiaForInfinityNext.py"
FT_KUCOIN_USDT_PATH="${ROOT_PATH}/ft_userdata_kucoin_usdt/user_data/strategies/NostalgiaForInfinityNext.py"
FT_KUCOIN_BTC_PATH="${ROOT_PATH}/ft_userdata_kucoin_btc/user_data/strategies/NostalgiaForInfinityNext.py"
FT_HUOBIPRO_USDT_PATH="${ROOT_PATH}/ft_userdata_huobipro_usdt/user_data/strategies/NostalgiaForInfinityNext.py"
FT_KRAKEN_USDT_PATH="${ROOT_PATH}/ft_userdata_Kraken/user_data/strategies/NostalgiaForInfinityNext.py"

FT_BINANCE_USDT_PATH_NEXTGEN="${ROOT_PATH}/ft_userdata_binance_usdt/user_data/strategies/NostalgiaForInfinityNextGen.py"
FT_BINANCE_BUSD_PATH_NEXTGEN="${ROOT_PATH}/ft_userdata_binance_busd/user_data/strategies/NostalgiaForInfinityNextGen.py"
FT_BINANCE_ETH_PATH_NEXTGEN="${ROOT_PATH}/ft_userdata_binance_eth/user_data/strategies/NostalgiaForInfinityNextGen.py"
FT_BINANCE_BTC_PATH_NEXTGEN="${ROOT_PATH}/ft_userdata_binance_btc/user_data/strategies/NostalgiaForInfinityNextGen.py"
FT_KUCOIN_USDT_PATH_NEXTGEN="${ROOT_PATH}/ft_userdata_kucoin_usdt/user_data/strategies/NostalgiaForInfinityNextGen.py"
FT_KUCOIN_BTC_PATH_NEXTGEN="${ROOT_PATH}/ft_userdata_kucoin_btc/user_data/strategies/NostalgiaForInfinityNextGen.py"
FT_HUOBIPRO_USDT_PATH_NEXTGEN="${ROOT_PATH}/ft_userdata_huobipro_usdt/user_data/strategies/NostalgiaForInfinityNextGen.py"
FT_KRAKEN_USDT_PATH_NEXTGEN="${ROOT_PATH}/ft_userdata_Kraken/user_data/strategies/NostalgiaForInfinityNextGen.py"



FT_BINANCE_USDT_PATH_X="${ROOT_PATH}/ft_userdata_binance_usdt/user_data/strategies/NostalgiaForInfinityX.py"
FT_BINANCE_BUSD_PATH_X="${ROOT_PATH}/ft_userdata_binance_busd/user_data/strategies/NostalgiaForInfinityX.py"
FT_BINANCE_ETH_PATH_X="${ROOT_PATH}/ft_userdata_binance_eth/user_data/strategies/NostalgiaForInfinityX.py"
FT_BINANCE_BTC_PATH_X="${ROOT_PATH}/ft_userdata_binance_btc/user_data/strategies/NostalgiaForInfinityX.py"
FT_KUCOIN_USDT_PATH_X="${ROOT_PATH}/ft_userdata_kucoin_usdt/user_data/strategies/NostalgiaForInfinityX.py"
FT_KUCOIN_BTC_PATH_X="${ROOT_PATH}/ft_userdata_kucoin_btc/user_data/strategies/NostalgiaForInfinityX.py"
FT_HUOBIPRO_USDT_PATH_X="${ROOT_PATH}/ft_userdata_huobipro_usdt/user_data/strategies/NostalgiaForInfinityX.py"
FT_KRAKEN_USDT_PATH_X="${ROOT_PATH}/ft_userdata_Kraken/user_data/strategies/NostalgiaForInfinityX.py"



TG_TOKEN="UR_BOT_TOKEN"
TG_CHAT_ID="UR_CHAT_ID"

cd $(dirname ${NFI_PATH})

GITRESPONSE=`git pull`
UPDATED='Already up to date.'

if [[ $GITRESPONSE != $UPDATED ]]; then
        sleep 20

        GITCOMMITTER=`git show -s --format='%cn'`
        GITVERSION=`git show -s --format='%h'`
        GITCOMMENT=`git show -s --format='%s'`
        GITFILE=`git show --stat --oneline HEAD`
        
        if [[ $GITFILE == *"NostalgiaForInfinityNext.py"* ]]; then
            echo "It's NostalgiaForInfinityNext .."

            cp NostalgiaForInfinityNext.py ${FT_BINANCE_USDT_PATH}
            cp NostalgiaForInfinityNext.py ${FT_BINANCE_BUSD_PATH}
            cp NostalgiaForInfinityNext.py ${FT_BINANCE_ETH_PATH}
            cp NostalgiaForInfinityNext.py ${FT_BINANCE_BTC_PATH}
            cp NostalgiaForInfinityNext.py ${FT_KUCOIN_USDT_PATH}
            cp NostalgiaForInfinityNext.py ${FT_KUCOIN_BTC_PATH}
            cp NostalgiaForInfinityNext.py ${FT_HUOBIPRO_USDT_PATH}
            cp NostalgiaForInfinityNext.py ${FT_KRAKEN_USDT_PATH}
            
            curl -s --data "text=<b>New <i>NostalgiaForInfinityNext</i> version</b> by <code>${GITCOMMITTER}</code>!%0ACommit: <code>$GITVERSION</code>%0AComment: <code>${GITCOMMENT}</code>%0A⏳ Please wait for reload..." \
                --data "parse_mode=HTML" \
                --data "chat_id=$TG_CHAT_ID" \
                "https://api.telegram.org/bot${TG_TOKEN}/sendMessage"
            	
            	
            cd $(dirname ${FT_BINANCE_USDT_PATH})
            docker-compose restart > /dev/null &&
            sleep 25 &&
        
            
            
            
            curl -s --data "text=NFI reload has been completed!" \
                --data "parse_mode=HTML" \
                --data "chat_id=$TG_CHAT_ID" \
                "https://api.telegram.org/bot${TG_TOKEN}/sendMessage"	
        fi

        
        if [[ $GITFILE == *"NostalgiaForInfinityNextGen.py"* ]]; then
            echo "It's NostalgiaForInfinityNextGen .."
            cp NostalgiaForInfinityNextGen.py ${FT_BINANCE_USDT_PATH_NEXTGEN}
            cp NostalgiaForInfinityNextGen.py ${FT_BINANCE_BUSD_PATH_NEXTGEN}
            cp NostalgiaForInfinityNextGen.py ${FT_BINANCE_ETH_PATH_NEXTGEN}
            cp NostalgiaForInfinityNextGen.py ${FT_BINANCE_BTC_PATH_NEXTGEN}
            cp NostalgiaForInfinityNextGen.py ${FT_KUCOIN_USDT_PATH_NEXTGEN}
            cp NostalgiaForInfinityNextGen.py ${FT_KUCOIN_BTC_PATH_NEXTGEN}
            cp NostalgiaForInfinityNextGen.py ${FT_HUOBIPRO_USDT_PATH_NEXTGEN}
            cp NostalgiaForInfinityNextGen.py ${FT_KRAKEN_USDT_PATH_NEXTGEN}
            curl -s --data "text=<b>New <i>NostalgiaForInfinityNextGen</i> version</b> by <code>${GITCOMMITTER}</code>!%0ACommit: <code>$GITVERSION</code>%0AComment: <code>${GITCOMMENT}</code>%0A⏳ Please wait for reload..." \
                --data "parse_mode=HTML" \
                --data "chat_id=$TG_CHAT_ID" \
                "https://api.telegram.org/bot${TG_TOKEN}/sendMessage"
            	
            cd $(dirname ${FT_BINANCE_BUSD_PATH})
            docker-compose restart > /dev/null &&
            sleep 25 &&
            
            #cd $(dirname ${FT_BINANCE_ETH_PATH})
            #docker-compose restart > /dev/null &&
            
            #sleep 25 &&
        
            cd $(dirname ${FT_BINANCE_BTC_PATH})
            docker-compose restart > /dev/null &&
            
            sleep 25 &&
        
            cd $(dirname ${FT_KUCOIN_USDT_PATH})
            docker-compose restart > /dev/null &&
            
            sleep 25 &&
        
            #cd $(dirname ${FT_KUCOIN_BTC_PATH})
            #docker-compose restart > /dev/null &&
            
            #sleep 25 &&
        
            #cd $(dirname ${FT_HUOBIPRO_USDT_PATH})
            #docker-compose restart > /dev/null &&
            
            #sleep 25 &&
        
            #cd $(dirname ${FT_KRAKEN_USDT_PATH})
            #docker-compose restart > /dev/null &&
            
            #sleep 20 &&
            curl -s --data "text=NFI reload has been completed!" \
                --data "parse_mode=HTML" \
                --data "chat_id=$TG_CHAT_ID" \
                "https://api.telegram.org/bot${TG_TOKEN}/sendMessage"	
       fi
        
        if [[ $GITFILE == *"NostalgiaForInfinityX.py"* ]]; then
            echo "It's NostalgiaForInfinityX .."

            cp NostalgiaForInfinityX.py ${FT_BINANCE_USDT_PATH_X}
            cp NostalgiaForInfinityX.py ${FT_BINANCE_BUSD_PATH_X}
            cp NostalgiaForInfinityX.py ${FT_BINANCE_ETH_PATH_X}
            cp NostalgiaForInfinityX.py ${FT_BINANCE_BTC_PATH_X}
            cp NostalgiaForInfinityX.py ${FT_KUCOIN_USDT_PATH_X}
            cp NostalgiaForInfinityX.py ${FT_KUCOIN_BTC_PATH_X}
            cp NostalgiaForInfinityX.py ${FT_HUOBIPRO_USDT_PATH_X}
            cp NostalgiaForInfinityX.py ${FT_KRAKEN_USDT_PATH_X}
            
            curl -s --data "text=<b>New <i>NostalgiaForInfinityX</i> version</b> by <code>${GITCOMMITTER}</code>!%0ACommit: <code>$GITVERSION</code>%0AComment: <code>${GITCOMMENT}</code>%0A⏳ Please wait for reload..." \
                --data "parse_mode=HTML" \
                --data "chat_id=$TG_CHAT_ID" \
                "https://api.telegram.org/bot${TG_TOKEN}/sendMessage"
            
            
            #cd $(dirname ${FT_BINANCE_ETH_PATH_X})
            #docker-compose restart > /dev/null &&
            #sleep 25 &&
        
            #cd $(dirname ${FT_KUCOIN_BTC_PATH_X})
            #docker-compose restart > /dev/null &&
            sleep 25 &&
        
        #   cd $(dirname ${FT_HUOBIPRO_USDT_PATH_X})
        #   docker-compose restart > /dev/null &&
        #   sleep 25 &&
        
            
            curl -s --data "text=NFI reload has been completed!" \
                --data "parse_mode=HTML" \
                --data "chat_id=$TG_CHAT_ID" \
                "https://api.telegram.org/bot${TG_TOKEN}/sendMessage"	
        fi

      
        
      
fi