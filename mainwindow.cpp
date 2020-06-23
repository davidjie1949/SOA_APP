#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "paho_test_utils.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_PublishArrival_clicked(){
    const string CLIENTID       = "DXPPub";
    const string TOPIC          = "/SERVICE/REQUEST/AVPIM/TVF/CANCELPULLOVER";
    const int QOS               =  1;
    const unsigned int TIMEOUT  = 10000L;

    string binary;
    PublishArrival arrival;

    if (ui->curbside->currentText() == "CURB_SIDE_NULL"){
        arrival.set_curbside(PublishArrival_CurbSide_CURB_SIDE_NULL);
        cout << "CURB_SIDE_NULL" << endl;
    }else if (ui->curbside->currentText() == "CURB_SIDE_LEFT"){
        arrival.set_curbside(PublishArrival_CurbSide_CURB_SIDE_LEFT);
        cout << "CURB_SIDE_LEFT" << endl;
    }else if (ui->curbside->currentText() == "CURB_SIDE_RIGHT"){
        arrival.set_curbside(PublishArrival_CurbSide_CURB_SIDE_RIGHT);
        cout << "CURB_SIDE_RIGHT" << endl;
    }else if (ui->curbside->currentText() == "CURB_SIDE_BOTH"){
        arrival.set_curbside(PublishArrival_CurbSide_CURB_SIDE_BOTH);
        cout << "CURB_SIDE_BOTH" << endl;
    }else if (ui->curbside->currentText() == "CURB_SIDE_NEITHER"){
        arrival.set_curbside(PublishArrival_CurbSide_CURB_SIDE_NEITHER);
        cout << "CURB_SIDE_NEITHER" << endl;
    }

    if (ui->should_disp->isChecked() == 1){
        arrival.set_should_disp(1);
        cout << "Should_disp Yes" << endl;
    }else{
        arrival.set_should_disp(0);
        cout << "Should_disp No" << endl;
    }

    arrival.SerializeToString(&binary);

    cout << binary << endl;

    publish(binary, CLIENTID, TOPIC, QOS, TIMEOUT);

}


void MainWindow::on_Passenger_Pullover_clicked(bool checked){
    cout << " Passenger Pullover Requested." << checked << endl;
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
