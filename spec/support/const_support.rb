# coding: utf-8

# 相关常量

module ConstSupport

  def client
    private_key = <<-EOF
-----BEGIN RSA PRIVATE KEY-----
Proc-Type: 4,ENCRYPTED
DEK-Info: DES-EDE3-CBC,CAC6AD4F561A512F

H2UZjulrCCEqysZNoWHhxd/+4V3Ace/jOahwtXvj5kSX/KdiHOzCn8kwuw3OnE3s
Pn34ZvVmGzGa3q3gMArAdMVHytgifafhZPmFULBl7xcl6sCTmWI122gHkmyftsS3
jLAEaaYsIkREbyvkRX2ah+9q1CTdHgG2IOMcKj8p4CkLufcxI+ImHDo5ZH87voZS
/TdZdz0fZ8ZNkmt+BFm3RK8K56oZFQLal2JoKkScg0+cKXrTwTgpDQW1u+PRKSgW
+95/LEHU/QsR6y/RMqmccMd0By9Z9K6BudmU4yI+FFbkljNeCfLy/SFMaBZ7Yolv
TIy4Ibv21x2NVOuusI5dXzCKU4Y8HeRDUMGcLxz7jP2BbAXcc3GcOt+V+iD29jWP
Pm86jgIriSomZi5O6bz88s0byA89qhTlLFkU0WYKL/CpTKxhe3quGqr5fKdgy1K1
OBp8g6cYiGRGuQerYlUcPXgFsVIGdYAn4jxRvuIE8kJWmi1sWbe7LZJ8Y6syu4LN
qUJPNpuhcm77xsfKZ0SFw9wNbxLecWNBoXXEjqPhrQtzYC5R9gdl9kiVECO5xz9g
6grGuYEcG2NEnJ/r0+sXqd5Aybe/rtIj7vuAP8b27SS+2V6gCCrNlgfKiqN27p7O
EZlDyY8Ngud6TrBxLRF3xq/UdtjhwmOU4z+0bEQyEQT2ngobaqK5mjnGkhiJ/oSM
HwGo5Oy96YY0/5NaSvsfNXaNLBW1mL1OsoxxMDCIqTBwPAZxm7kJjdB1wOqrAAy2
j1IAyW48RMb1R8Zzij8cOihUoeqOarHkn/UwTp/zRL1UfLjE4Vcg4Q==
-----END RSA PRIVATE KEY-----
    EOF

    public_key = <<-EOF
-----BEGIN CERTIFICATE-----
MIICUjCCAbugAwIBAgIJAP9p1+tn9fN/MA0GCSqGSIb3DQEBBQUAMEIxCzAJBgNV
BAYTAlhYMRUwEwYDVQQHDAxEZWZhdWx0IENpdHkxHDAaBgNVBAoME0RlZmF1bHQg
Q29tcGFueSBMdGQwHhcNMTcwODE1MTAwNTUxWhcNMTkwOTA0MTAwNTUxWjBCMQsw
CQYDVQQGEwJYWDEVMBMGA1UEBwwMRGVmYXVsdCBDaXR5MRwwGgYDVQQKDBNEZWZh
dWx0IENvbXBhbnkgTHRkMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDzQ9DL
lrVOT0IMzHjOIH8hseicO1kQKdHvHTNEGAbtOKmJmxaOI0KEFcmQf4BPgsA+tpcp
amOYbD6re/3qAJZZxqU4JaVixIhGq1YucAQKxGMZgLs69ZaGB+NUKo0PsdRUod4y
OQtppCBCNDtoiMyPoS+kAU7mm1U5+tuPopo9ZQIDAQABo1AwTjAdBgNVHQ4EFgQU
qEzGgaMNVdV2XLoMm/v6UzZWgrQwHwYDVR0jBBgwFoAUqEzGgaMNVdV2XLoMm/v6
UzZWgrQwDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQUFAAOBgQDKUKYsADCr4jTe
udHcqhAG0vIUS7Adwiee3mS+nXk6rh0+TPUjPirbN/Iszd7ppn3+j4cYcE0REmbR
aQNfVZSDL++hqRvKYUyZEh4QMMbnesqg4ae9V6g5wnzhU4nFL1NMvk8k/FMOrPrq
nCSRXVFpm8/JY8zVxRF7jqwuoaON7A==
-----END CERTIFICATE-----
    EOF

    # 都是测试版本数据
    @client ||= Reapal::Client.new(
      server_url: 'http://111.203.228.5:58001',
      partner_id: '100000000532891',
      merchant_id: '100000000532891',
      md5_key: '24a5be0f40g143b374bc9b1ead63420a0a812aa8ad6262e67a55e5636db8a6cb',
      public_key: public_key,
      private_key: private_key,
      private_key_pwd: '171115',
    )
  end

  def test_contracts
    return if @constracts

    sleep(3) # 否则会报“签约过于频繁”的错误

    name='王五'
    id='421181198608283272'
    other_phone = Faker::PhoneNumber.cell_phone
    result = client.onekey_contract(Reapal::Utils.gen_flow_id,
                          name, id, other_phone)

    @constracts = result[:data][:contracts]

    @constracts
  end
end
