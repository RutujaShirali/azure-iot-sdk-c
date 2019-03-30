npm install iotz
sudo ./../../node_modules/.bin/iotz update
sudo rm -R -f mxchip
git clone https://github.com/obastemur/mxchip_az3166_firmware.git mxchip
rsync -avz --update --existing ./ mxchip/mbed-iot-devkit-sdk/cores/arduino/azure-iot-sdk-c/
cp -r provisioning_client/inc/azure_prov_client/internal mxchip/mbed-iot-devkit-sdk/cores/arduino/azure-iot-sdk-c/provisioning_client/inc/azure_prov_client/
git checkout -- mxchip/mbed-iot-devkit-sdk/cores/arduino/azure-iot-sdk-c/provisioning_client/deps/RIoT/Reference/DICE/DiceSha256.c
git checkout -- mxchip/mbed-iot-devkit-sdk/cores/arduino/azure-iot-sdk-c/provisioning_client/deps/RIoT/Reference/RIoT/Core/RIoTCrypt/RiotDerEnc.c
git checkout -- mxchip/mbed-iot-devkit-sdk/cores/arduino/azure-iot-sdk-c/provisioning_client/deps/RIoT/Reference/RIoT/Core/RIoTCrypt/RiotEcc.c
git checkout -- mxchip/mbed-iot-devkit-sdk/cores/arduino/azure-iot-sdk-c/provisioning_client/deps/RIoT/Reference/RIoT/Core/RIoTCrypt/RiotSha256.c
git checkout -- mxchip/mbed-iot-devkit-sdk/cores/arduino/azure-iot-sdk-c/provisioning_client/adapters/hsm_client_riot.c
cp c-utility/src/base64.c mxchip/mbed-iot-devkit-sdk/cores/arduino/azure-iot-sdk-c/c-utility/src/base64_utility.c
cp c-utility/src/base32.c mxchip/mbed-iot-devkit-sdk/cores/arduino/azure-iot-sdk-c/c-utility/src/base32_utility.c
cd mxchip
sudo ./../../../node_modules/.bin/iotz init mbed
sudo ./../../../node_modules/.bin/iotz compile