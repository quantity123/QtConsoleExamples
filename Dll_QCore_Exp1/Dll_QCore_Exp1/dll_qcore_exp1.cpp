#include "dll_qcore_exp1.h"
#include <QDebug>

Dll_QCore_Exp1::Dll_QCore_Exp1()
{
    qDebug() << "Dll hello!";
}

void sayGreat()
{
    qDebug() << "great a day";
}

uint add(uint a, uint b)
{
    return a + b;
}
