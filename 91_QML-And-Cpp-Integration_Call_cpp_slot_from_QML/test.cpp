#include "test.h"

test::test(QObject *parent) : QObject(parent)
{

}

int test::number()
{
    //return a number
    qInfo()<<"Calling a number:";
    return  42;
}

void test::bark()
{
    qInfo()<<"bark bark bark";
}
