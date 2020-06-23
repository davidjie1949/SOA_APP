#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "paho_test_utils.h"

MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent), ui(new Ui::MainWindow){
    ui->setupUi(this);
}

MainWindow::~MainWindow(){
    delete ui;
}

void MainWindow::on_Passenger_Pullover_clicked(bool checked){
    const string CLIENTID       = "DXPPub";
    const string TOPIC          = "/SERVICE/REQUEST/AVPIM/SDM/PASSENGERPULLOVER";
    const int QOS               =  0;
    const unsigned int TIMEOUT  = 10000L;

    string binary;
    PassengerPullover passengerPullover;
    passengerPullover.set_passenger_pullover(1);
    passengerPullover.SerializePartialToString(&binary);

    cout << " Passenger Pullover Requested." << passengerPullover.ParseFromString(binary) << endl;

    publish(binary, CLIENTID, TOPIC, QOS, TIMEOUT);
}

void MainWindow::on_cancel_pullover_clicked(bool checked){
    cout << " Cancel Pullover Requested." << checked << endl;
}

void MainWindow::on_GoAck_Check_clicked(bool checked){
    cout << " GoAck_check Requested." << checked << endl;
}

void MainWindow::on_NewPassengerCount_clicked(){
    QMessageBox msg;
    msg.information(0, " Pass_Count " , ui->pass_count->currentText());
}
