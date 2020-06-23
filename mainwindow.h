#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:

    void on_Passenger_Pullover_clicked(bool checked);

    void on_cancel_pullover_clicked(bool checked);

    void on_GoAck_Check_clicked(bool checked);

    void on_NewPassengerCount_clicked();

private:
    Ui::MainWindow *ui;
};

#endif // MAINWINDOW_H
