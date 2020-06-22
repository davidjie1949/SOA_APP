#ifndef PAHO_TEST_UTILS_H
#define PAHO_TEST_UTILS_H

#include <iostream>
#include <QMessageBox>
#include <stdio.h>
#include <stdlib.h>
#include <QString>
#include <string>
#include <TVF_To_DXP.pb.h>
#include <TVF_To_DXP_info.pb.h>
#include "MQTTClient.h"

using namespace std;
using namespace ford::av::taas;

int publish(const string &PAYLOAD, const string &CLIENTID, const string &TOPIC, const int &QOS, const unsigned int &TIMEOUT);

#endif // PAHO_TEST_UTILS_H
