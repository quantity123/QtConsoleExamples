#include <QCoreApplication>
#include "shareddata.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    SharedData sd1;
    SharedData sd2 = sd1;
    return a.exec();
}
