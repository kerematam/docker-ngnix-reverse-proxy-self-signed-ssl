country="/C=TR"
state="/ST="
locality="/L=Istanbul"
org="/O=company-name"
org_unit="/OU=company HQ."
common_name="/CN="$CREATE_SS_CERT_FOR
email="/emailAddress=cert@company-name.com"
signature_args=$(echo "$country$state$locality$org$org_unit$common_name")
cert_path="/etc/ssl/certs/"

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $cert_path$CREATE_SS_CERT_FOR.key -out $cert_path$CREATE_SS_CERT_FOR.crt -subj "$signature_args"
