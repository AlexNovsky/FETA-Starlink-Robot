*** Variables ***
# Configuration
${BROWSER} =  safari
${ENVIRONMENT} =  prod
${BASE_URL} =  https://www.starlink.com/
${AndroidApp} =  https://play.google.com/store/apps/details?id=com.starlink.mobile
${iOSApp} =  https://apps.apple.com/us/app/starlink/id1537177988

# Input Data
&{REGISTERED_USER}  Email=tsekhanovskii@hotmail.com  Password=)=&HQ_y^L6a*m^
&{UNREGISTERED_USER}  Email=someone@notregistered.com  Password=TestPassword!  ExpectedErrorMessage=INVALID CREDENTIALS
&{INVALID_PASSWORD_USER}  Email=tsekhanovskii@hotmail.com  Password=TestPassword!  ExpectedErrorMessage=INVALID CREDENTIALS
&{BLANK_CREDENTIALS_USER}  Email=#BLANK  Password=#BLANK  ExpectedErrorMessage=EMAIL REQUIRED