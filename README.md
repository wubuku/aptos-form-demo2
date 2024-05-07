# README

```shell
docker run \
-v .:/myapp \
wubuku/dddappp-aptos:0.0.1 \
--xRenderFormSchema /myapp/form-schema/form2.json \
--xRenderFormId AptosFormsDemo2 \
--xRenderFormStartPageName StartPage \
--xRenderFormUpdatable \
--xRenderFormOpenAt '2023-11-06T07:36:54Z' \
--xRenderFormCutoffAt '2093-11-08T07:36:54+08:00' \
--dddmlDirectoryPath /myapp/dddml \
--boundedContextName Test.AptosFormsDemo2 \
--aptosMoveProjectDirectoryPath /myapp \
--boundedContextAptosPackageName AptosFormsDemo2 \
--boundedContextAptosNamedAddress aptos_forms_demo2 \
--boundedContextJavaPackageName org.test.aptosformsdemo2 \
--javaProjectsDirectoryPath /myapp/aptos-java-service \
--javaProjectNamePrefix aptosformsdemo2 \
--pomGroupId test.aptosformsdemo2
```

```shell
#aptos init
##Choose network from [devnet, testnet, mainnet, local, custom | defaults to devnet]
##testnet
aptos account fund-with-faucet --account default --amount 200000000
aptos config show-profiles
```

Note that the form contract depends on a utility package in this project: https://github.com/dddappp/XRender-Form-Utils

We need to publish this package on chain first, and then we can compile the form contract.
In the following command, we assume that the package is published at address `0x71df3ab1b6cf015aa5870a8a6e8ee0951c54e8d7d79bb59fa3b737c3a38fb93b`.

```shell
aptos move publish --named-addresses aptos_forms_demo2=default,xrender_form_utils=0x71df3ab1b6cf015aa5870a8a6e8ee0951c54e8d7d79bb59fa3b737c3a38fb93b --assume-yes
aptos move run --function-id 'default::aptos_forms_demo2_init::initialize' --assume-yes
```

Now we can call the `submit` function of the `aptos_forms_demo2::aptos_forms_demo2_start_page_aggregate` module to submit form data.

## Tips

We published this form contract on [testnet](https://explorer.aptoslabs.com/account/0x68758f60bd7f2acc7874dedc7fae3bc9a861ba1dfd1c5f53113808af6ff02eb5/modules/code/aptos_forms_demo2_start_page_aggregate?network=testnet)

