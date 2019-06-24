*** Variables ***
${facebook}  xpath://a[@href='https://www.facebook.com/TestDevLab']
${twitter}  xpath://a[@href='https://twitter.com/testdevlab']
${instagram}  xpath://a[@href='https://www.instagram.com/testdevlablv/']
${linkedin}  xpath://a[@href='https://www.linkedin.com/company/testdevlab-ltd']
${youtube}  xpath://a[@href='https://www.youtube.com/channel/UC9sO95joJVcdfcE4TH8uvnQ']

*** Keywords ***
Click on facebook icon
    click element  ${facebook}

TestDevLab facebook page opens
    select window  url=https://www.facebook.com/TestDevLab
    get location
    location should be  https://www.facebook.com/TestDevLab

Click on twitter icon
    click element  ${twitter}

TestDevLab twitter page opens
    select window  url=https://twitter.com/testdevlab
    get location
    location should be  https://twitter.com/testdevlab

Click on instagram icon
    click element  ${instagram}

TestDevLab instagram page opens
    select window  url=https://www.instagram.com/testdevlablv/
    get location
    location should be  https://www.instagram.com/testdevlablv/

Click on linkedin icon
    click element  ${linkedin}

TestDevLab linkedin page opens
    log to console  This test case is supposed to fail! False Positive Test!
    select window  url=https://www.linkedin.com/
    get location
    location should be  https://www.linkedin.com/

Click on youtube icon
    click element  ${youtube}

TestDevLab youtube page opens
    select window  url=https://www.youtube.com/channel/UC9sO95joJVcdfcE4TH8uvnQ
    get location
    location should be  https://www.youtube.com/channel/UC9sO95joJVcdfcE4TH8uvnQ
