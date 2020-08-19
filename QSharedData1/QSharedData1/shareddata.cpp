#include "shareddata.h"

//把类写到这里，然后头文件前置声明使用，这样可以把一些不想公开的调用关系的类隐藏起来，这个SharedDataData类是SharedData类成员(调用关系)
class SharedDataData : public QSharedData
{
public:
    int mBigData;
};

SharedData::SharedData(QObject *parent)
    : QObject(parent)
    , data(new SharedDataData)
{

}

SharedData::SharedData(const SharedData &rhs)
    : data(rhs.data)
{

}

SharedData &SharedData::operator=(const SharedData &rhs)
{
    if (this != &rhs)
        data.operator=(rhs.data);
    return *this;
}

SharedData::~SharedData()
{

}

void SharedData::setData(int d)
{
    data->mBigData = d;
}
