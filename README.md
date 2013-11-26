# <a name="title"></a> Jasig-CAS cookbook

## <a name="requirements"></a> Requirements
Download a local copy of the CAS Server found at "" and point
['jasig']['cas']['cas-server-war']


### <a name="requirements-chef"></a> Chef

Tested on 11.04 but newer and older version should work just fine. 

### <a name="requirements-platform"></a> Platform

The following platforms have been tested with this cookbook, meaning that the
recipes run on these platforms without error:

* rhel
* centos

### <a name="requirements-cookbooks"></a> Cookbooks

* java

## <a name="attributes"></a> Attributes
['jasig']['cas']['user']
['jasig']['cas']['group']
['jasig']['cas']['cas-server-war']

Has been tested using the Oracle JDK 1.6 but can be overridden using
['java']['install_flavour']
['java']['jdk_version']


## <a name="recipes"></a> Recipes
* default

### <a name="recipes-default"></a> default
* fetches remote war 
* performs silent install

You will need to build your war file from the instructions on the JASIG website. 
