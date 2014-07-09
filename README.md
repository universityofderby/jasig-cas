# <a name="title"></a> Jasig-CAS cookbook
A simple cokbook that place a war into the correct Tomcat directory and opens the required ports. 

## <a name="requirements"></a> Requirements
Download a local copy of the CAS Server found at http://www.jasig.org/cas/download and point
['jasig']['cas']['cas-server-war'] to a such as Artifactory/Nexus.

This cookbook has been tested with CAS 3.5.2 but should work with 4.0.0

I recommend you use a wrapper cookbook to set attributes and 


### <a name="requirements-chef"></a> Chef

Tested on 11.12 but newer and older version should work just fine. 

### <a name="requirements-platform"></a> Platform

The following platforms have been tested with this cookbook, meaning that the
recipes run on these platforms without error:

* rhel
* centos

### <a name="requirements-cookbooks"></a> Cookbooks

* simple-iptables
* tomcat

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

### <a name="Recommendations"></a> Recommendations

Build your war file from the instructions on the JASIG website with any customizations you require (e.g. theme changes)
If you need to set anything extra it is recommended thar you write a wrapper cookbook. e.g. setting jks files for tomcat, as this cookbook does not deal with that. 
