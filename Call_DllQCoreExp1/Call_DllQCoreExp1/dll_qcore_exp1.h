#ifndef DLL_QCORE_EXP1_H
#define DLL_QCORE_EXP1_H

#include "Dll_QCore_Exp1_global.h"

class DLL_QCORE_EXP1_EXPORT Dll_QCore_Exp1
{
public:
    Dll_QCore_Exp1();
};

DLL_QCORE_EXP1_EXPORT void sayGreat();
DLL_QCORE_EXP1_EXPORT uint add(uint a, uint b);

//QLibrary加载用这个方式导出
//extern "C++"  这样也可以导出，但是和直接用DLL_QCORE_EXP1_EXPORT导出是一样
//extern "C"
//{
//    DLL_QCORE_EXP1_EXPORT void sayGreat();
//    DLL_QCORE_EXP1_EXPORT uint add(uint a, uint b);
//}

#endif // DLL_QCORE_EXP1_H
