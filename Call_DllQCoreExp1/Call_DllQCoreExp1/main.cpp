#include <QCoreApplication>
#include "dll_qcore_exp1.h"
#include <QDebug>
#include <QLibrary>
#include <windows.h>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    auto dll = new Dll_QCore_Exp1;
    if (dll != nullptr)
        qDebug() << "dll call success!";

    sayGreat();

    //可以直接调用函数名称，无需用QLibrary加载，QLibrary加载必须要前面用extern "C"导出
    QLibrary lib(a.applicationDirPath() + "/Dll_QCore_Exp1.dll");
    if (lib.load())
    {
        typedef void(*sayGreatFunc)();
        sayGreatFunc sayGreatddd = static_cast<sayGreatFunc>(lib.resolve("sayGreat"));
        sayGreatddd();
        lib.unload();
    }

    return a.exec();
}
