#ifndef SHAREDDATA_H
#define SHAREDDATA_H

#include <QObject>
#include <QSharedDataPointer>

class SharedDataData;

class SharedData : public QObject
{
    Q_OBJECT
public:
    explicit SharedData(QObject *parent = nullptr);
    SharedData(const SharedData &);
    SharedData &operator=(const SharedData &);
    ~SharedData();
    void setData(int d);
signals:


private:
    QSharedDataPointer<SharedDataData> data;
};

#endif // SHAREDDATA_H
