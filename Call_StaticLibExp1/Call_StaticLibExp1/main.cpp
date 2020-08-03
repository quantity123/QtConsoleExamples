#include <QCoreApplication>
#include "staticlib_exp1.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    StaticLib_exp1 lib;
    return a.exec();
}
