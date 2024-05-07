# Aptos Move CLI Cheatsheet

[ToC]

## AptosFormsDemo2StartPage aggregate

### Submit method

```shell
aptos move run --function-id 'default::aptos_forms_demo2_start_page_aggregate::submit' \
--args 'string:fr_jq19' u128:fr_3c5z 'string:A' 'string:[A,B]' 'string:A' 'string:[A,B]' 'string:fr_bzpt' bool:fr_1kci bool:fr_9i6h u128:fr_jyqo u128:fr_3eds 'u16:[fr_e62y_item_1,fr_e62y_item_2]' 'u16:[fr_vki_item_1,fr_vki_item_2]' 'u8:[fr_6znw_item_1,fr_6znw_item_2]' 'u8:[fr_4ncu_item_1,fr_4ncu_item_2]' 'string:fr_1cbi' 'string:fr_18bq' 'string:fr_lb63' 'string:fr_iyqp' 'string:fr_hfdf' \
--assume-yes
```

### Update method

```shell
aptos move run --function-id 'default::aptos_forms_demo2_start_page_aggregate::update' \
--args address:signer_address 'string:fr_jq19' u128:fr_3c5z 'string:A' 'string:[A,B]' 'string:A' 'string:[A,B]' 'string:fr_bzpt' bool:fr_1kci bool:fr_9i6h u128:fr_jyqo u128:fr_3eds 'u16:[fr_e62y_item_1,fr_e62y_item_2]' 'u16:[fr_vki_item_1,fr_vki_item_2]' 'u8:[fr_6znw_item_1,fr_6znw_item_2]' 'u8:[fr_4ncu_item_1,fr_4ncu_item_2]' 'string:fr_1cbi' 'string:fr_18bq' 'string:fr_lb63' 'string:fr_iyqp' 'string:fr_hfdf' \
--assume-yes
```

